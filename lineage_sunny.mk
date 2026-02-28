#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sunny device
$(call inherit-product, device/xiaomi/sunny/device.mk)

# Inherit some common Project InfinityX stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Include Dolby Atmos
$(call inherit-product, hardware/dolby/dolby.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_sunny
PRODUCT_DEVICE := sunny
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2101K7AG
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_SYSTEM_NAME := sunny

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Camera information (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 48,8,2,2
AXION_CAMERA_FRONT_INFO := 13

# Maintainer name (underscores become spaces in the UI)
AXION_MAINTAINER := Viaan_Thakur

# Processor name (underscores become spaces)
AXION_PROCESSOR := Qualcomm®_Snapdragon™_678
