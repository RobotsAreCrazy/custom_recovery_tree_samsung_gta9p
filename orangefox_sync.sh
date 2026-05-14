#!/bin/bash
mkdir -p ~/fox/source
cd ~/fox/source

# Switch to the AOSP manifest meant for Android 10+
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1 --depth=1

# Sync the source
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
