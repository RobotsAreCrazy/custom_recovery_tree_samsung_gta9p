#!/bin/bash
# Emergency Sync Script - Bypassing Dead Links
mkdir -p ~/fox/source
cd ~/fox/source

# Pulling from the only remaining public mirror manifest
repo init -u https://gitlab.com/OrangeFox/Manifest.git -b 12.1 --depth=1
repo sync -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
