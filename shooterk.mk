#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/shooterk/overlay

# ramdisk stuffs
PRODUCT_COPY_FILES += \
    device/htc/shooterk/ramdisk/init.shooterk.rc:root/init.shooterk.rc \
    device/htc/shooterk/ramdisk/init.shooterk.usb.rc:root/init.shooterk.usb.rc \
    device/htc/shooterk/ramdisk/ueventd.shooterk.rc:root/ueventd.shooterk.rc \
    device/htc/shooterk/ramdisk/fstab.shooterk:root/fstab.shooterk

## recovery and custom charging
PRODUCT_COPY_FILES += \
    device/htc/shooterk/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/shooterk/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/shooterk/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/shooterk/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/shooterk/recovery/sbin/htcbatt:recovery/root/sbin/htcbatt


# keylayouts
PRODUCT_COPY_FILES += \
    device/htc/shooterk/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl\
    device/htc/shooterk/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/shooterk/keylayout/shooterk-keypad.kl:system/usr/keylayout/shooterk-keypad.kl

# Keychars
PRODUCT_COPY_FILES += \
    device/htc/shooterk/keychars/shooterk-keypad.kcm.bin:system/usr/keychars/shooterk-keypad.kcm \
    device/htc/shooterk/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm

# idc
PRODUCT_COPY_FILES += \
    device/htc/shooterk/idc/shooterk-keypad.idc:system/usr/idc/shooterk-keypad.idc \
    device/htc/shooterk/config/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc

# Device Specific Firmware
PRODUCT_COPY_FILES += \
    device/htc/msm8660-common/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Adreno Drivers
PRODUCT_COPY_FILES += \
    device/htc/shooterk/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/htc/shooterk/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/htc/shooterk/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/htc/shooterk/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/shooterk/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# GPS
PRODUCT_COPY_FILES += device/common/gps/gps.conf_US_SUPL:system/etc/gps.conf
PRODUCT_PACKAGES += \
    gps.shooterk

PRODUCT_PACKAGES += \
    Torch

# Kernel init.d script
PRODUCT_COPY_FILES += \
    device/htc/shooterk/config/99kernel:system/etc/init.d/99kernel \
    device/htc/shooterk/config/00_frandom:system/etc/init.d/00_frandom

# Virgin voicemail
PRODUCT_COPY_FILES += \
    device/htc/shooterk/config/voicemail-conf.xml:system/blobs/virgin/etc/voicemail-conf.xml

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs \

# ADB
ADDITIONAL_DEFAULT_PROPERTIES+=  ro.adb.secure=0

# OTA ID
#PRODUCT_PROPERTY_OVERRIDES += \
#    otaupdater.otaid=liquidshooterk

# WiMAX support
#PRODUCT_PACKAGES += \
#    CMWimaxSettings

# misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    htc.audio.alt.enable=0 \
    htc.audio.hac.enable=0

# Inherite make files
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# call the proprietary setup
$(call inherit-product, vendor/htc/shooterk/shooterk-vendor.mk)