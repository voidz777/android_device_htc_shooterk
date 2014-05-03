PRODUCT_COPY_FILES += device/htc/shooterk/config/audio_effects.conf:system/etc/audio_effects.conf

# Inherit some common Liquid stuff.
# $(call inherit-product, vendor/mahdi/config/common_phone.mk)
$(call inherit-product, vendor/mahdi/configs/common.mk)
$(call inherit-product, vendor/mahdi/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/shooterk/shooterk.mk)

# Enable Torch
PRODUCT_PACKAGES += Torch

# Device naming
PRODUCT_DEVICE := shooterk
PRODUCT_NAME := mahdi_shooterk
PRODUCT_BRAND := KDDI
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := ISW12HT

# PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooterk BUILD_FINGERPRINT="htc/htc_shooterk/shooterk:4.0.3/IML74K/560205.6:user/release-keys" PRIVATE_BUILD_DESC="2.95.651.6 CL560205 release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooterk BUILD_FINGERPRINT="KDDI/HTI12/shooterk:4.0.3/IML74K/447280.7:user/release-keys" PRIVATE_BUILD_DESC="2.29.970.7 CL447280 release-keys"


# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Release name
PRODUCT_RELEASE_NAME := shooterk

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-1280x768.zip:system/media/bootanimation.zip
