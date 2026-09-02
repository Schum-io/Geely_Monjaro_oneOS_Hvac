#!/bin/bash
#
# oneOS_Hvac — orphan ("junk") resource detector
# Author: https://github.com/Schum-io
#
# Firmware APKs of the Geely head unit are repacked by an optimization pass that
# leaves behind resources nobody references: flat files under res/ with 2-3
# character names (res/8A.otf, res/-1.webp, res/a01.png ...). They are absent
# from resources.arsc, so nothing in the app can load them — but they are still
# stored in the APK, and apktool dumps them into unknown/res/, from where they go
# straight back into the rebuilt APK.
#
# This script compares the file list of the APK against the file paths that
# resources.arsc actually references, and reports the difference.
#
# Usage:
#   tools/find-orphan-resources.sh                       # analyse the tracked original APK
#   tools/find-orphan-resources.sh path/to/other.apk     # analyse another APK
#   tools/find-orphan-resources.sh --apply               # analyse, then delete unknown/res
#                                                        # from the build tree
#
# Requires: aapt2 (Android SDK build-tools) and unzip.
#

set -euo pipefail

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

APK="apktool_workspace/original/oneOS_Hvac.apk"
BUILD_TREE="apktool_workspace/modified/oneOS_Hvac"
APPLY=0

for arg in "$@"; do
    case "$arg" in
        --apply) APPLY=1 ;;
        -h|--help) sed -n '2,30p' "${BASH_SOURCE[0]}"; exit 0 ;;
        *) APK="$arg" ;;
    esac
done

if [ ! -f "$APK" ]; then
    echo -e "${RED}APK not found: $APK${NC}" >&2
    exit 1
fi

# --- locate aapt2 -----------------------------------------------------------
AAPT2="${AAPT2:-}"
if [ -z "$AAPT2" ]; then
    AAPT2="$(command -v aapt2 || true)"
fi
if [ -z "$AAPT2" ]; then
    for d in "$HOME/Library/Android/sdk/build-tools" "$HOME/Android/Sdk/build-tools"; do
        [ -d "$d" ] || continue
        cand="$(ls -1 "$d" | sort -V | tail -1)"
        [ -x "$d/$cand/aapt2" ] && AAPT2="$d/$cand/aapt2" && break
    done
fi
if [ -z "$AAPT2" ] || [ ! -x "$AAPT2" ]; then
    echo -e "${RED}aapt2 not found. Install Android SDK build-tools or set AAPT2=/path/to/aapt2${NC}" >&2
    exit 1
fi

WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

echo -e "${GREEN}=== Orphan resource scan ===${NC}"
echo "APK:   $APK"
echo "aapt2: $AAPT2"
echo

# --- every res/ entry stored in the APK, with sizes -------------------------
# unzip -lv columns: Length Method Size Cmpr Date Time CRC-32 Name
unzip -lv "$APK" | awk 'NF>=8 && $8 ~ /^res\// {print $1"\t"$3"\t"$8}' | sort -k3,3 > "$WORK/stored"
cut -f3 "$WORK/stored" | sort -u > "$WORK/all"

# --- every res/ path referenced by resources.arsc ---------------------------
"$AAPT2" dump resources "$APK" \
    | grep -oE '\(file\) res/[^ ]+' | sed 's/^(file) //' | sort -u > "$WORK/referenced"

comm -23 "$WORK/all" "$WORK/referenced" > "$WORK/orphans"
comm -13 "$WORK/all" "$WORK/referenced" > "$WORK/dangling"

n_all=$(wc -l < "$WORK/all" | tr -d ' ')
n_ref=$(wc -l < "$WORK/referenced" | tr -d ' ')
n_orp=$(wc -l < "$WORK/orphans" | tr -d ' ')
n_dan=$(wc -l < "$WORK/dangling" | tr -d ' ')

printf "res/ entries in APK ......... %s\n" "$n_all"
printf "referenced by resources.arsc  %s\n" "$n_ref"
printf "orphans (dead weight) ....... %s\n" "$n_orp"
printf "referenced but missing ...... %s" "$n_dan"
if [ "$n_dan" -ne 0 ]; then
    echo -e "  ${RED}<- broken APK, investigate${NC}"
    head -10 "$WORK/dangling"
else
    echo "  (ok)"
fi
echo

awk -F'\t' 'NR==FNR{o[$0]=1; next} o[$3]{u+=$1; c+=$2} END{
    printf "orphan payload: %.1f MB uncompressed, %.1f MB as stored in the APK\n", u/1048576, c/1048576
}' "$WORK/orphans" "$WORK/stored"
echo

echo -e "${YELLOW}Largest 20 orphans:${NC}"
awk -F'\t' 'NR==FNR{o[$0]=1; next} o[$3]{printf "%10d  %s\n", $1, $3}' "$WORK/orphans" "$WORK/stored" \
    | sort -rn | head -20
echo

# Orphans that are a byte-for-byte copy of a resource the app does use: proof
# that this is repack litter rather than content for another car model.
echo -e "${YELLOW}Orphans that duplicate a real resource (by CRC-32):${NC}"
unzip -lv "$APK" | awk 'NF>=8 && $8 ~ /^res\// {print $7"\t"$8}' > "$WORK/crc"
awk -F'\t' '
    NR==FNR { orphan[$0]=1; next }
    { if (orphan[$2]) o[$1]=o[$1] " " $2; else r[$1]=r[$1] " " $2 }
    END { n=0; for (h in o) if (h in r) n += split(o[h], _, " "); print "  " n " of '"$n_orp"'" }
' "$WORK/orphans" "$WORK/crc"
echo

LIST="docs/orphan-resources.txt"
mkdir -p docs
cp "$WORK/orphans" "$LIST"
echo -e "Full list written to ${GREEN}$LIST${NC}"
echo

# --- deletion ---------------------------------------------------------------
if [ ! -d "$BUILD_TREE/unknown/res" ]; then
    echo -e "${GREEN}$BUILD_TREE/unknown/res does not exist — build tree is already clean.${NC}"
    exit 0
fi

tree_n=$(find "$BUILD_TREE/unknown/res" -type f | wc -l | tr -d ' ')
tree_sz=$(du -sh "$BUILD_TREE/unknown/res" | cut -f1)
echo -e "${YELLOW}Build tree carries $tree_n orphan files in unknown/res ($tree_sz).${NC}"

# Safety net: nothing in unknown/res may be a resource the app references.
find "$BUILD_TREE/unknown/res" -type f | sed "s|^$BUILD_TREE/unknown/||" | sort > "$WORK/tree"
if [ -n "$(comm -12 "$WORK/tree" "$WORK/referenced")" ]; then
    echo -e "${RED}Refusing to touch anything: unknown/res holds files that resources.arsc references:${NC}"
    comm -12 "$WORK/tree" "$WORK/referenced" | head
    exit 1
fi

if [ "$APPLY" -ne 1 ]; then
    echo "Re-run with --apply to delete it."
    exit 0
fi

if git -C "$REPO_ROOT" ls-files --error-unmatch "$BUILD_TREE/unknown/res" >/dev/null 2>&1; then
    git -C "$REPO_ROOT" rm -r -q --cached "$BUILD_TREE/unknown/res"
fi
rm -rf "$BUILD_TREE/unknown/res"
echo -e "${GREEN}Deleted $BUILD_TREE/unknown/res — rebuild with ./build_magisk_module.sh${NC}"
