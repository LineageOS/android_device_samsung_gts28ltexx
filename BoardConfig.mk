include device/samsung/gts2-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gts28ltexx

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(LOCAL_PATH)/include

# Kernel
TARGET_KERNEL_CONFIG := lineage_gts28lte_defconfig

# RIL
BOARD_MODEM_TYPE := ss333
BOARD_PROVIDES_LIBRIL := true

# RIL.java overwrite
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Recovery
TARGET_OTA_ASSERT_DEVICE := gts28lte,gts28ltexx

# SELinux
BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy
