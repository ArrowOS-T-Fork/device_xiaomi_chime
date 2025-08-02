#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from chime device
$(call inherit-product, device/xiaomi/chime/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

AXION_MAINTAINER := nothing404error
AXION_PROCESSOR := Snapdragon_662
AXION_CPU_SMALL_CORES := 0,1,2,3
AXION_CPU_BIG_CORES := 4,5,6,7
AXION_CAMERA_REAR_INFO := 48,2
AXION_CAMERA_FRONT_INFO := 8

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_chime
PRODUCT_DEVICE := chime
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6115
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_NO_CAMERA := false

# AudioFX
TARGET_EXCLUDES_AUDIOFX := true

TARGET_FACE_UNLOCK_SUPPORTED := true

TARGET_ENABLE_BLUR := true

# Set to true for building a ROM without GAPPS
# Set to false for building a ROM with GAPPS included
RESERVE_SPACE_FOR_GAPPS := true
