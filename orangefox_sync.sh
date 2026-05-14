#!/bin/bash
# 1. Create the working directory
mkdir -p ~/fox_12.1
cd ~/fox_12.1

# 2. Get the official OrangeFox sync tool
git clone https://gitlab.com/OrangeFox/sync.git
cd sync

# 3. [span_4](start_span)Run the official sync for the 12.1 branch
# This will pull about 40GB-80GB of data, so it takes time[span_4](end_span)
./orangefox_sync.sh --branch 12.1 --path ~/fox_12.1
