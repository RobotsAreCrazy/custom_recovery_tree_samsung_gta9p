#!/bin/bash
mkdir -p ~/fox/source
cd ~/fox/source

# We are switching to the 'minimal' manifest which is still public
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-12.1 --depth=1
repo sync -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
