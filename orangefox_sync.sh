#!/bin/bash
mkdir -p ~/fox/source
cd ~/fox/source

# Wiping old failed attempts from 1000025373.jpg
rm -rf .repo

# Using the branch that is verified to exist on this mirror
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-11 --depth=1

# Run the sync
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
