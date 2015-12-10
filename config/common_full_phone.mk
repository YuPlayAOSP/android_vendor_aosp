# Inherit common stuff
$(call inherit-product, vendor/cm/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME \
    BluetoothExt

# Include LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/cm/overlay/dictionaries

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Helium.ogg

PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

$(call inherit-product, vendor/cm/config/telephony.mk)
