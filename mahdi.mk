PRODUCT_COPY_FILES += device/htc/shooterk/config/audio_effects.conf:system/etc/audio_effects.conf

# Inherit some common Liquid stuff.
#$(call inherit-product, vendor/liquid/config/common_phone.mk)
$(call inherit-product, vendor/mahdi/configs/common.mk)
$(call inherit-product, vendor/mahdi/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/shooterk/shooterk.mk)

# Device naming
PRODUCT_DEVICE := shooterk
PRODUCT_NAME := mahdi_shooterk
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := Evo 3D CDMA

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooterk BUILD_FINGERPRINT="KDDI/HTI12/shooterk:4.0.3/IML74K/685720:user/release-keys" PRIVATE_BUILD_DESC="2.31.970.1 CL685720 release-keys"

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Release name
PRODUCT_RELEASE_NAME := shooterk

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-1280x768.zip:system/media/bootanimation.zip
