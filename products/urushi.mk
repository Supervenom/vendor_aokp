# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/semc/urushi/device_urushi.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)


# Setup device specific product configuration.
PRODUCT_NAME := aokp_urushi
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := urushi
PRODUCT_MODEL := Xperia Ray
PRODUCT_MANUFACTURER := SEMC

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=ST18i BUILD_FINGERPRINT="SEMC/ST18i_0000-0000/ST18i:4.0.3/4.1.C.0.7/-H9_3w:user/release-keys" PRIVATE_BUILD_DESC="ST18i-user 4.0.3 4.1.C.0.7 -H9_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera
    Mms
    Music

# Copy zeus specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip

