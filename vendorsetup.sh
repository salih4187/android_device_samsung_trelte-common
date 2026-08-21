#
# Copyright (C) 2022 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE=trelte-common
FLAG_FILE="device/samsung/$DEVICE/.already_patched"

# Check if the patches were already applied
if [ -f "$FLAG_FILE" ]; then
    return 0
fi

echo "Patches : Fetching Patches Repo"
git clone https://github.com/universal5433/universal5433_patches -b lineage-18.1 device/samsung/$DEVICE/patches

if [ -e device/samsung/$DEVICE/patches ]; then
    echo "Patches: Fetched Repo"
else
    echo "Patches: Failed to Fetch Repo"
    return 1
fi

echo " "
echo "Patches: Applying NetworkStack: TcpSocketTracker: Opt-out for TCP info parsing on legacy kernels"
patch -d packages/modules/NetworkStack -p1 -N --no-backup-if-mismatch --reject-file=/tmp/rej < device/samsung/$DEVICE/patches/packages/modules/NetworkStack/0001-TcpSocketTracker-Opt-out-for-TCP-info-parsing-on-leg.patch
echo " "
echo "Patches: Applying system: core: utils: Threads: Handle empty thread names"
patch -d system/core -p1 -N --no-backup-if-mismatch --reject-file=/tmp/rej < device/samsung/$DEVICE/patches/system/core/0001-utils-Threads-Handle-empty-thread-names.patch
echo " "

echo "Patches: Cleaning up"
rm -rf device/samsung/$DEVICE/patches

touch "$FLAG_FILE"
