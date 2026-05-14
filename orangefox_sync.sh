#!/bin/bash
mkdir -p ~/fox/source
cd ~/fox/source

# We are switching to 'v3.6' branch which is the stable base for Android 12
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-12.1 --depth=1
# If that still fails, the script will automatically try the alternate branch name
if [ $? -ne 0 ]; then
  repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b v3.6 --depth=1
fi

repo sync -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
