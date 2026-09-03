#!/bin/bash

#
# oneOS_Hvac Enhanced Climate Controls - Build Script
# Author: https://github.com/Schum-io
# Description: Adds steering wheel heating, front seat heating, ventilation and massage, and rear seat heating to the main climate screen
#

# List of files to copy
FILES_TO_COPY=(
    "app/src/main/res/layout/pager_item_aircondition.xml:apktool_workspace/modified/oneOS_Hvac/res/layout/pager_item_aircondition.xml"
)

# Output colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}=== Starting APK and Magisk module build ===${NC}"

# Load variables from the .env file
if [ -f .env ]; then
    echo -e "${YELLOW}Loading variables from .env file...${NC}"
    export $(grep -v '^#' .env | xargs)
else
    echo -e "${RED}Error: .env file not found!${NC}"
    echo -e "${YELLOW}Create a .env file with the KEYSTORE_PASSWORD variable${NC}"
    exit 1
fi

# Check that the password is set
if [ -z "$KEYSTORE_PASSWORD" ]; then
    echo -e "${RED}Error: KEYSTORE_PASSWORD variable is not set in the .env file!${NC}"
    exit 1
fi

# Check for the keystore file, create one if missing
if [ ! -f "oneOS_Hvac.keystore" ]; then
    echo -e "${YELLOW}Keystore file not found. Creating a new keystore...${NC}"
    keytool -genkey -v -keystore oneOS_Hvac.keystore \
        -alias oneOS_Hvac \
        -keyalg RSA \
        -keysize 2048 \
        -validity 10000 \
        -storepass "$KEYSTORE_PASSWORD" \
        -keypass "$KEYSTORE_PASSWORD" \
        -dname "CN=oneOS_Hvac, OU=Schum-io, O=GitHub, L=Unknown, ST=Unknown, C=US" \
        -noprompt
    
    if [ $? -ne 0 ]; then
        echo -e "${RED}Error while creating the keystore file!${NC}"
        exit 1
    fi
    
    echo -e "${GREEN}Keystore file created successfully${NC}"
else
    echo -e "${GREEN}Keystore file found${NC}"
fi

# Remove the old APK file
echo -e "${YELLOW}Removing the old APK file from magisk/system/app/oneOS_Hvac/${NC}"
rm -f ./magisk/system/app/oneOS_Hvac/oneOS_Hvac.apk

# Define the build directory
BUILD_DIR="apktool_workspace/modified/oneOS_Hvac"

# Check that the build directory exists
if [ ! -d "$BUILD_DIR" ]; then
    echo -e "${RED}Error: directory $BUILD_DIR not found!${NC}"
    echo -e "${YELLOW}Unpack the APK file first: apktool d oneOS_Hvac.apk -o $BUILD_DIR${NC}"
    exit 1
fi

# Strips the data binding markup from an XML file
remove_data_binding() {
    local input_file="$1"
    local output_file="$2"
    local temp_file="${output_file}.tmp"
    
    # Use awk to strip the data binding markup
    awk '
        BEGIN { 
            in_data = 0
            after_xml_declaration = 0
            found_root = 0
        }
        # Print the XML declaration
        /^<\?xml/ { 
            print
            after_xml_declaration = 1
            next 
        }
        # Skip the opening <layout> tag
        /<layout>/ { 
            next 
        }
        # Start skipping the <data> block
        /<data>/ { 
            in_data = 1
            next 
        }
        # Stop skipping at </data>
        /<\/data>/ { 
            in_data = 0
            next 
        }
        # Skip the trailing </layout> closing tag
        /<\/layout>$/ { 
            next 
        }
        # Skip blank lines right after the XML declaration
        after_xml_declaration == 1 && /^[[:space:]]*$/ {
            next
        }
        # Print every other line as long as we are not inside the data block
        !in_data { 
            after_xml_declaration = 0
            # Drop the extra indentation of the first real element after the XML declaration (the root element)
            if (found_root == 0 && /<[a-zA-Z]/) {
                found_root = 1
                # Strip the leading whitespace of the root element
                sub(/^[[:space:]]+/, "")
            }
            print 
        }
    ' "$input_file" > "$temp_file"
    
    # Move the temporary file into place
    mv "$temp_file" "$output_file"
}

# Copy the modified files from app/ into apktool_workspace
echo -e "${YELLOW}Copying the modified files...${NC}"

# Copy every file from the list
for file_pair in "${FILES_TO_COPY[@]}"; do
    # Split the pair into source and destination paths
    IFS=':' read -r source_file dest_file <<< "$file_pair"
    
    # Skip comments
    if [[ "$source_file" =~ ^#.*$ ]]; then
        continue
    fi
    
    # Check that the source file exists
    if [ ! -f "$source_file" ]; then
        echo -e "${RED}Warning: file $source_file not found, skipping...${NC}"
        continue
    fi
    
    # Create the destination directory if it does not exist
    dest_dir=$(dirname "$dest_file")
    mkdir -p "$dest_dir"
    
    # Check whether the file is an XML layout file
    if [[ "$source_file" =~ \.xml$ ]] && [[ "$source_file" =~ /res/layout/ ]]; then
        # Strip the data binding markup from XML layout files
        remove_data_binding "$source_file" "$dest_file"
        
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}  ✓ Copied with data binding stripped: $source_file -> $dest_file${NC}"
        else
            echo -e "${RED}  ✗ Error while copying: $source_file${NC}"
        fi
    else
        # Copy every other file as is
        cp "$source_file" "$dest_file"
        
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}  ✓ Copied: $source_file -> $dest_file${NC}"
        else
            echo -e "${RED}  ✗ Error while copying: $source_file${NC}"
        fi
    fi
done

echo -e "${GREEN}File copying finished${NC}"

# Remove the apktool cache
#
# When the build/ directory exists, apktool considers the resources unchanged
# ("AndroidManifest.xml and resources have not changed"), never runs aapt2
# and builds the APK with the old resources. There is no error - the APK is
# created, signed and shipped in the module with the previous layout. That is
# why the cache is always wiped.
echo -e "${YELLOW}Removing the apktool cache from $BUILD_DIR/build...${NC}"
rm -rf "$BUILD_DIR/build"

# Build the modified APK file from the oneOS_Hvac directory
echo -e "${YELLOW}Building the modified APK file from $BUILD_DIR...${NC}"
apktool b "$BUILD_DIR" -o ./magisk/system/app/oneOS_Hvac/oneOS_Hvac.apk

# Check that the build succeeded
if [ ! -f "./magisk/system/app/oneOS_Hvac/oneOS_Hvac.apk" ]; then
    echo -e "${RED}Error: the APK file was not created!${NC}"
    exit 1
fi

echo -e "${GREEN}APK file built successfully${NC}"

# Sign the APK file
echo -e "${YELLOW}Signing the APK file...${NC}"
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore oneOS_Hvac.keystore -storepass "$KEYSTORE_PASSWORD" ./magisk/system/app/oneOS_Hvac/oneOS_Hvac.apk oneOS_Hvac

if [ $? -ne 0 ]; then
    echo -e "${RED}Error while signing the APK file!${NC}"
    exit 1
fi

echo -e "${GREEN}APK file signed successfully${NC}"

# Create the build directory if it does not exist
if [ ! -d "build" ]; then
    mkdir -p build
fi

# Remove the old Magisk module zip if it exists
echo -e "${YELLOW}Removing the old Magisk module if it exists...${NC}"
rm -f ./build/oneOS_Hvac.zip

# Prepare module.prop with the build date
#
# magisk/module.prop is a template and stays untouched. The build date is
# injected into the copy that goes into the zip, so a build never leaves
# stray changes in git.
#
# Magisk Manager reads the version field, which is why the date goes there.
# A separate buildDate field duplicates it in machine-readable form - it is
# visible on the device at /data/adb/modules/oneOS_Hvac/module.prop.
echo -e "${YELLOW}Injecting the build date into module.prop...${NC}"

BUILD_DATE=$(date '+%Y-%m-%d')
APK_VERSION=$(grep '^versionName=' magisk/module.prop | cut -d= -f2- | tr -d "'\"")

# If the template has no versionName, show at least the date
if [ -n "$APK_VERSION" ]; then
    VERSION_LINE="${APK_VERSION} (${BUILD_DATE})"
else
    VERSION_LINE="${BUILD_DATE}"
fi

STAGE_DIR=$(mktemp -d)
trap 'rm -rf "$STAGE_DIR"' EXIT

# Carry the template over without the fields that are regenerated
grep -v -e '^version=' -e '^buildDate=' magisk/module.prop > "$STAGE_DIR/module.prop"
{
    echo "version=${VERSION_LINE}"
    echo "buildDate=${BUILD_DATE}"
} >> "$STAGE_DIR/module.prop"

if [ ! -s "$STAGE_DIR/module.prop" ]; then
    echo -e "${RED}Error: failed to prepare module.prop!${NC}"
    exit 1
fi

echo -e "${GREEN}  ✓ Build date: ${BUILD_DATE}${NC}"

# Create the zip archive for the Magisk module
# module.prop is excluded from the main archive and added separately,
# already carrying the build date (-j puts the file in the archive root)
echo -e "${YELLOW}Creating the Magisk module...${NC}"
cd magisk
zip -r ../build/oneOS_Hvac.zip META-INF/ install.sh system/ common/ > /dev/null
cd ..
zip -j ./build/oneOS_Hvac.zip "$STAGE_DIR/module.prop" > /dev/null

if [ ! -f "./build/oneOS_Hvac.zip" ]; then
    echo -e "${RED}Error: the Magisk module was not created!${NC}"
    exit 1
fi

echo -e "${GREEN}=== Build finished successfully! ===${NC}"
echo -e "${GREEN}Magisk module: ./build/oneOS_Hvac.zip${NC}"

# Open Finder with the build directory
echo -e "${YELLOW}Opening Finder with the build directory...${NC}"
open build
