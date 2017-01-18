LOCAL_PATH := device/samsung/gts28ltexx

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Kernel
TARGET_KERNEL_CONFIG := cm_exynos5433-gts28lte_defconfig

# RIL
BOARD_MODEM_TYPE := ss333

# RIL.java overwrite
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Recovery
TARGET_OTA_ASSERT_DEVICE := gts28lte,gts28ltexx

# Inherit common board flags
include device/samsung/gts2-common/BoardConfigCommon.mk