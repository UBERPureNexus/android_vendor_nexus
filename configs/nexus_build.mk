# Copyright (C) 2015 The Pure Nexus Project
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

# Main Required Packages
PRODUCT_PACKAGES += \
    LatinIME \
    Launcher3 \
    libemoji 

# Cyanogen LockClock
PRODUCT_PACKAGES += \
    LockClock

# Screen recorder package and lib
PRODUCT_PACKAGES += \
    ScreenRecorder \
    libscreenrecorder

# Keyboard Wallpaper Picker
PRODUCT_PACKAGES += \
    WallpaperPicker

# Hide layers manager from launcher
PRODUCT_PROPERTY_OVERRIDES += \
    ro.layers.noIcon=noIcon

# Add layers manager app to build
PRODUCT_PACKAGES += \
    LayersManager

# Busybox
PRODUCT_PACKAGES += \
    Busybox

# SuperSU FTW
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/supersu/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/nexus/prebuilt/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# OptiPop property overides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.bg_apps_limit=24 \
    pm.sleep.mode=1 \
    debug.performance.tuning=1 \
    ro.ril.power_collapse=1 \
    dalvik.vm.profiler=1 \
    dalvik.vm.isa.arm.features=lpae,div \
    dalvik.vm.image-dex2oat-filter=everything \
    dalvik.vm.dex2oat-filter=everything \
    persist.sys.dun.override=0

# Squisher Location
SQUISHER_SCRIPT := vendor/optipop/tools/squisher
