# Inherit AOSP device configuration for nozomi.
$(call inherit-product, device/semc/fuji/device_fuji.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Zeus overlay (temporary)
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/zeus

# Setup device specific product configuration.
PRODUCT_NAME := aokp_nozomi
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := nozomi
PRODUCT_MODEL := Xperia S
PRODUCT_MANUFACTURER := SEMC

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=LT26i BUILD_FINGERPRINT="SEMC/LT18i_0000-0000/LT18i:4.0.3/4.1.C.0.7/-H9_3w:user/release-keys" PRIVATE_BUILD_DESC="LT18i-user 4.0.3 4.1.C.0.7 -H9_3w test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music \

# Copy zeus specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip

