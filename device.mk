DEVICE_PACKAGE_OVERLAYS += device/samsung/gts28ltexx/overlay
LOCAL_PATH := device/samsung/gts28ltexx

###########################################################
### RAMDISK
###########################################################

PRODUCT_PACKAGES += \
    init.baseband.rc

###########################################################
### BLUETOOTH
###########################################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/gts28ltexx/gts28ltexx-vendor.mk)
