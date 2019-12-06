# Copyright (C) 2019 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := vendor/apps/LiveWallpaper

# Prebuilt Packages
PRODUCT_PACKAGES += \
    MicropaperPrebuilt \
    NexusWallpapersStubPrebuilt2019 \
    PixelLiveWallpaperPrebuilt \
    WallpapersBReel2019

# Files
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/etc,$(TARGET_COPY_OUT_PRODUCT)/etc)

# Include package overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay/common
