# CLAUDE.md — guide for agents

Project: a Magisk module that extends the stock climate (HVAC) app of the
**Geely Monjaro REST 1** head unit. It surfaces steering-wheel heating, seat
heating/ventilation (row 1) and seat heating (row 2) directly on the main climate
screen, where the stock app hides them in a submenu.

There is **no source code** — the work happens on a decompiled APK (apktool + smali).
The `app/` directory is a helper Android project used only to edit layouts in an IDE
with preview; Gradle **does not** build the shipped APK from it.

---

## 1. Directory map

Permanent:

| Path | What it is |
|------|-----------|
| `apktool_workspace/original/oneOS_Hvac.apk` | pristine APK from the firmware — reference input, tracked in git |
| `apktool_workspace/modified/oneOS_Hvac/` | **the build tree**: unpacked APK with the mod applied, tracked in git |
| `app/src/main/res/layout/pager_item_aircondition.xml` | **source of truth for the layout** |
| `build_magisk_module.sh` | full cycle: copy layout → build → sign → zip |
| `tools/find-orphan-resources.sh` | finds (and with `--apply` deletes) the firmware's unreferenced resources |
| `docs/orphan-resources.md` | why `unknown/res/` is deleted, and how to re-derive the list |
| `docs/orphan-resources.txt` | the orphan list of `1.0.20240929G(181)`, for the record only |
| `notes.md` | id reference for the main-screen widgets |
| `magisk/` | Magisk module skeleton; the built APK lands in `system/app/oneOS_Hvac/` |
| `build/oneOS_Hvac.zip` | the installable module (build output) |

Temporary, exists only while porting to a new APK version (see §3), deleted afterwards:

| Path | What it is |
|------|-----------|
| `apktool_workspace/original/oneOS_Hvac_old.apk` | the previous firmware APK |
| `apktool_workspace/original/oneOS_Hvac/` | new original, unpacked — the pristine baseline |
| `apktool_workspace/original/oneOS_Hvac_old/` | previous original, unpacked |
| `apktool_workspace/modified/oneOS_Hvac_old/` | previous build tree — **the source of the mod during a port** |

### What is gitignored and why

Unpacking an APK produces ~14k files, so **scratch unpack directories are kept out of
git** — that is all the `.gitignore` rule means:

```
/apktool_workspace/original/oneOS_Hvac*
/apktool_workspace/modified/oneOS_Hvac_old
```

Between them these two rules cover every directory a port creates: both unpacked
originals, the `oneOS_Hvac_old.apk` file, and the previous build tree.

Two things follow that are easy to get wrong:

- `apktool_workspace/modified/oneOS_Hvac/` **is tracked** — it is the build tree that
  carries the mod, not scratch space. The second rule is deliberately an exact match
  with no wildcard, so it never touches it.
- The first pattern also matches `oneOS_Hvac.apk` itself. The file stays in git only
  because it was added before the rule existed; if it ever needs re-adding, use
  `git add -f`.

---

## 2. The change set (canonical)

Exactly 12 changes relative to the pristine APK, plus one dex relocation and one
deletion. If `diff -rq` against a freshly unpacked original shows anything else,
something is wrong.

### 2.1 Layout (1 file)

- `res/layout/pager_item_aircondition.xml` — new controls added.

### 2.2 Smali, modified (1 file)

- `smali/com/geely/hvac/adapter/AirConditionViewHolder.smali`
  — adds a `MemberClasses` annotation, a private method
  `initAcPanelController(Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;)V`,
  and a call to it from the constructor.

### 2.3 Smali, added (10 files)

All under `smali/com/geely/hvac/adapter/`:

| Class | Purpose |
|-------|---------|
| `AirConditionViewHolder$AcPanelController` | main panel controller |
| `…$ContainerRunnable` | panel container handling |
| `…$Row1SteeringWheelHeatRunnable` | steering wheel heat (row 1) |
| `…$Row1LeftHeatRunnable` | seat heat, left (row 1) |
| `…$Row1RightHeatRunnable` | seat heat, right (row 1) |
| `…$Row1LeftWindRunnable` | seat ventilation, left (row 1) |
| `…$Row1RightWindRunnable` | seat ventilation, right (row 1) |
| `…$Row1LeftMassageRunnable` | massage, left (row 1) |
| `…$Row2LeftRunnable` | seat heat, left (row 2) |
| `…$Row2RightRunnable` | seat heat, right (row 2) |

### 2.4 64K method limit — dex relocation (mandatory)

The added code does not fit in `classes.dex` (65536 method-reference limit).
Four packages are **moved** from `smali/` to `smali_classes2/`:

```
smali/androidx/collection        → smali_classes2/androidx/collection
smali/androidx/dynamicanimation  → smali_classes2/androidx/dynamicanimation
smali/androidx/transition        → smali_classes2/androidx/transition
smali/androidx/vectordrawable    → smali_classes2/androidx/vectordrawable
```

A **move**, not a copy — duplicate classes across two dex files are not acceptable.
256 files in total.

Skip this and the build fails with a message that never mentions dex limits:

```
brut.androlib.exceptions.AndrolibException: Could not smali folder: smali
Caused by: ExceptionWithContext: Unsigned short value out of range: 65559
```

For reference, after a correct build: `classes.dex` ~8.62 MB (down from 8.95 MB),
`classes2.dex` ~1.07 MB (up from 0.82 MB).

### 2.5 Resource ids in use

The mod adds **no** resources — it reuses ids that already exist in the stock APK.
Before building, confirm every one of them is still present in
`res/values/public.xml` of the freshly unpacked original:

| id | name |
|----|------|
| `0x7f090135` | `heat_steering_wheel` |
| `0x7f0902e2` | `steering_wheel_status` |
| `0x7f090265` | `row1_left_massage` |
| `0x7f090267` | `row1_left_seat_heat_status` |
| `0x7f090268` | `row1_left_seat_wind_status` |
| `0x7f09026c` | `row1_right_seat_heat_status` |
| `0x7f09026d` | `row1_right_seat_wind_status` |
| `0x7f090270` | `row2_left_seat_heat_status` |
| `0x7f090272` | `row2_right_seat_heat_status` |

### 2.6 `unknown/res/` — deleted (mandatory)

The firmware APK stores 1543 resource files, ~26 MB, that `resources.arsc` does not
reference: flat `res/8A.otf`, `res/-1.webp`, `res/wF.xml` … left over from a repack
pass. apktool puts the 1330 that survive unpacking into `unknown/res/` and copies
them straight back into the rebuilt APK. The whole directory is **deleted** in the
build tree — that is the entire +32 MB the last firmware update added.

```bash
tools/find-orphan-resources.sh --apply
```

Nothing else has to change: apktool 3.0.3 keeps no `unknownFiles:` list in
`apktool.yml`, it just copies whatever is in `unknown/`. `unknown/META-INF/` (the
androidx `.version` marker files) **stays**.

Rebuilt APK with the directory gone: 86.87 MB, module zip 72.22 MB. Full analysis,
including what was deliberately *not* deleted (`assets/seat_regulate_kx11a3/`,
25 MB, is live code for a different seat configuration): `docs/orphan-resources.md`.

---

## 3. Porting the mod onto a new APK version

The whole port runs inside `apktool_workspace`. Nothing is taken out of git history —
the previous mod is preserved by renaming it to `oneOS_Hvac_old`.

**Rename before copying.** Both the old APK and the old build tree must be moved out of
the way *first*; otherwise the new version overwrites the only copy of the mod.

### Step 1. Make room for the new version

```bash
cd apktool_workspace
mv original/oneOS_Hvac.apk original/oneOS_Hvac_old.apk
mv modified/oneOS_Hvac     modified/oneOS_Hvac_old
```

Only now drop the new firmware APK in as `original/oneOS_Hvac.apk`.

### Step 2. Unpack both originals

Use the **same apktool version** for both — this is what keeps the baseline diff in
Step 4 clean (see §4):

```bash
apktool d original/oneOS_Hvac.apk     -o original/oneOS_Hvac
apktool d original/oneOS_Hvac_old.apk -o original/oneOS_Hvac_old
```

### Step 3. Seed the new build tree

```bash
cp -R original/oneOS_Hvac modified/oneOS_Hvac
```

At this point four trees are in play: two pristine (`original/oneOS_Hvac`,
`original/oneOS_Hvac_old`), the previous mod (`modified/oneOS_Hvac_old`), and the new
build tree (`modified/oneOS_Hvac`), still pristine.

### Step 4. Find out what actually changed between the two app versions

First compare the APKs themselves — do not trust `versionName`, it can be identical
across different firmware builds:

```bash
mkdir -p /tmp/a /tmp/b
cd /tmp/a && unzip -oq .../original/oneOS_Hvac.apk     classes.dex classes2.dex resources.arsc
cd /tmp/b && unzip -oq .../original/oneOS_Hvac_old.apk classes.dex classes2.dex resources.arsc
md5 /tmp/a/* /tmp/b/*
```

- **dex identical** → app code did not change; the smali files port over as a plain copy.
- **dex differ** → re-apply the §2.2 edit by hand against the new
  `AirConditionViewHolder.smali`, and re-check the method signatures of
  `PagerItemAirconditionBinding` and `AppMainViewModel` that `AcPanelController` calls.
- **resources.arsc differs** → re-verify the id table in §2.5; resource addresses may
  have shifted.

Then the baseline diff between the two pristine trees — clean, because both were
unpacked by the same apktool version:

```bash
diff -rq original/oneOS_Hvac_old original/oneOS_Hvac
```

For resources, `aapt2` on the APKs is more reliable than diffing trees:

```bash
AAPT=~/Library/Android/sdk/build-tools/<ver>/aapt2
$AAPT dump resources original/oneOS_Hvac.apk     > /tmp/new.txt
$AAPT dump resources original/oneOS_Hvac_old.apk > /tmp/old.txt
diff /tmp/old.txt /tmp/new.txt
```

### Step 5. Confirm the mod's change set

```bash
diff -rq original/oneOS_Hvac_old modified/oneOS_Hvac_old
```

Expect §2 — but see §4: if `modified/oneOS_Hvac_old` was unpacked by an older apktool,
resource noise will swamp this diff and only the smali part is trustworthy.

### Step 6. Port the smali

```bash
SRC=modified/oneOS_Hvac_old/smali/com/geely/hvac/adapter
DST=modified/oneOS_Hvac/smali/com/geely/hvac/adapter
cp "$SRC"/AirConditionViewHolder*.smali "$DST"/
```

### Step 7. Relocate the dex packages (§2.4)

```bash
cd modified/oneOS_Hvac
mkdir -p smali_classes2/androidx
for p in collection dynamicanimation transition vectordrawable; do
    mv "smali/androidx/$p" smali_classes2/androidx/
done
```

### Step 8. Strip the firmware's orphan resources (§2.6)

```bash
cd "$REPO_ROOT"
tools/find-orphan-resources.sh --apply
```

The script re-derives the list from the new APK — never reuse
`docs/orphan-resources.txt`, the short names are reassigned on every firmware build.
It refuses to delete anything if `resources.arsc` turns out to reference a file in
`unknown/res/`.

### Step 9. Layout

Edit **only** `app/src/main/res/layout/pager_item_aircondition.xml`.
`build_magisk_module.sh` copies it into the build tree itself, stripping the
Data Binding markup (`<layout>`, `<data>`) that apktool cannot compile.
Do not copy it by hand.

If the new original's layout changed, merge those changes into the `app/` copy — that
file, not the unpacked `res/layout/`, is the source of truth.

### Step 10. Verify the port is complete and minimal

```bash
diff -rq original/oneOS_Hvac modified/oneOS_Hvac
```

Expected, and nothing more: 1 changed layout, 1 changed `AirConditionViewHolder.smali`,
10 added smali files, 4 relocated `androidx` packages, and `unknown/res` present only
in the original (~1330 "Only in" lines — §2.6).

### Step 11. Build and check the output

```bash
rm -rf modified/oneOS_Hvac/build   # see §4
./build_magisk_module.sh
```

Then confirm the mod really is in the APK — decode the output and check that the
10 classes are present, that `initAcPanelController` is called from the constructor,
that the new ids appear in the layout, and that no `androidx` package exists in both
dex files at once. Also confirm the orphans are gone and nothing real went with them
(see the verification snippet in `docs/orphan-resources.md`): every `res/` entry in
the built APK must be referenced by `resources.arsc`, and nothing referenced may be
missing.

### Step 12. Clean up

Once the build is verified, delete every `_old` artifact and the scratch baseline:

```bash
rm -rf original/oneOS_Hvac_old original/oneOS_Hvac_old.apk modified/oneOS_Hvac_old
rm -rf original/oneOS_Hvac        # gitignored scratch, optional to keep
```

Only `original/oneOS_Hvac.apk` and `modified/oneOS_Hvac/` remain — commit those.

---

## 4. Pitfalls (all hit in practice)

**apktool's `build/` cache serves stale resources.**
If the log says `AndroidManifest.xml and resources have not changed`, aapt2 did
**not** recompile resources and the APK will ship the old layout. Always delete
`apktool_workspace/modified/oneOS_Hvac/build` before building.

**Never diff trees unpacked by different apktool versions.**
Step 2 unpacks both originals with the same version, so the baseline diff is clean.
The trap is `modified/oneOS_Hvac_old` (Step 5): it was unpacked whenever the previous
port happened, possibly by an older apktool. The formatting noise buries the real
change — a single modified layout can hide among ~275 "changed" files. Version
differences include:

- `dip` ↔ `dp`, `fill_parent` ↔ `match_parent`;
- different element ordering in `values/*/plurals.xml`, `dimens.xml`, `styles.xml`;
- a different number of entries in `values/ids.xml` (868 lines vs 667).

Smali is stable across apktool versions, so diffing that is always safe. For resources,
fall back to `aapt2 dump resources` on the APKs, or to the `app/` copy of the layout.
Current toolchain: apktool **3.0.3**.

**64K method limit.** See §2.4 — the most common build failure.

**`Could not move file: …/AndroidManifest.xml.orig` is flaky, not a real error.**
apktool backs the manifest up and restores it around the aapt2 run; the move
occasionally loses the race and the build dies in `ApkBuilder.buildResources` with a
`NoSuchFileException` on `AndroidManifest.xml.orig`. The tree is fine — delete
`modified/oneOS_Hvac/build` and run the build again. Do not go looking for a broken
manifest or a bad resource.

**Signing.** The firmware APK is signed with the platform key (`META-INF/PLATFORM.*`
or `TESTKEY.*`) and its manifest declares `android:sharedUserId="android.uid.system"`.
The rebuilt APK is signed with a local keystore and only works as a Magisk module in
`/system/app/`, shadowing the stock app.

**Repacked firmware APKs carry junk resources.** `1.0.20240929G(181)` has 1543 extra
resource files under shortened names (`res/wF.xml`, `res/-1.webp`) left over from an
optimization pass — unreferenced by `resources.arsc`, 549 of them byte-identical
copies of a real resource, one (`res/_Q.webp`) with a broken CRC, the rest stale
variants of real layouts and colors. apktool dumps them into `unknown/res/`, which
§2.6 deletes. They will also mislead anyone comparing raw zip contents: trust
`aapt2 dump resources` for what the app actually loads, not the zip listing.

**Orphan names collide on a case-insensitive filesystem.** 213 of those 1543 differ
only in case (`res/AA.xml` vs `res/aa.xml`), so on macOS/APFS apktool silently keeps
just one of each pair — which is why the tree holds 1330 files, not 1543. Harmless
here (the collisions are all inside the orphan set), but do not read the count
mismatch as a bug.

---

## 5. Building the module

```bash
./build_magisk_module.sh     # requires .env with KEYSTORE_PASSWORD
```

The script copies the layout (Data Binding stripped) → `apktool b` → `jarsigner` →
`build/oneOS_Hvac.zip`. Install via Magisk Manager → Modules → Install from storage.

### module.prop and the build date

`magisk/module.prop` is a **template**, and the build script never edits it. At zip time
the script writes a stamped copy into a temp dir and injects that into the archive root,
so builds leave no git churn:

- `version=<versionName> (<YYYY-MM-DD HH:MM>)` — what Magisk Manager shows;
- `buildDate=<YYYY-MM-DD HH:MM>` — the same timestamp, machine-readable, readable on
  device at `/data/adb/modules/oneOS_Hvac/module.prop`.

Both lines are regenerated on every build, so do not add them to the template by hand.
Keep `versionName` in the template current with the APK — the `version` field is derived
from it.

Note which fields actually reach a UI: the installer (`META-INF/.../update-binary`) reads
only `id`; everything else is displayed by Magisk Manager, which knows `name`, `version`,
`versionCode`, `author` and `description`. `versionName` and `platformBuildVersionName`
are non-standard extras kept as provenance notes — Magisk Manager ignores them, which is
why the build date goes into `version`.

On-device logs:

```bash
su
logcat -f /storage/sdcard/crash_log.txt
```

---

## 6. Useful entry points in the code

From `notes.md`:

- `smali/com/geely/hvac/databinding/PagerItemAirconditionBindingImpl.smali` —
  data binding for the main climate screen; new binding logic goes here.
- `smali/com/geely/hvac/databinding/PagerItemSeatBindingImpl.smali` —
  the seat screen, a good source to copy working steering-wheel heat logic from.
- `smali/com/geely/hvac/viewmodel/AppMainViewModel.smali` —
  state and business logic, shared by `AirConditionViewHolder` and `SeatViewHolder`;
  usually needs no changes.

`notes.md` also documents the ids of the main-screen widgets.
