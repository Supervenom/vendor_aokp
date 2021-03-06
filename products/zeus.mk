# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/semc/zeus/device_zeus.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Zeus overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/zeus

# Setup device specific product configuration.
PRODUCT_NAME := aokp_zeus
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := zeus
PRODUCT_MODEL := Xperia Play
PRODUCT_MANUFACTURER := SEMC

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=R800i BUILD_FINGERPRINT="SEMC/R800i_0000-0000/R800i:4.0.3/4.1.H.0.4/-z9-3w:user/release-keys" PRIVATE_BUILD_DESC="R800i-user 4.0.3 4.1.H.0.4 -z9-3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Apollo \

# Copy zeus specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_854.zip:system/media/bootanimation.zip

