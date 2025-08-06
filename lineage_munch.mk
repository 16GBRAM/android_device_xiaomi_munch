#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

BYPASS_CHARGE_SUPPORTED := true
TARGET_ENABLE_BLUR := true
TARGET_DISABLE_EPPE := true
TARGET_INCLUDES_LOS_PREBUILTS := true

# Define rear camera specs (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 64,8,2  # Example: 50MP + 48MP

# Define front camera specs
AXION_CAMERA_FRONT_INFO := 20  # Example: 42MP

# Maintainer name (use "_" for spaces, e.g., "rmp_22" → "rmp 22" in UI)
AXION_MAINTAINER := LordPutin

# Processor name (use "_" for spaces)
AXION_PROCESSOR := Snapdragon®_870_5G

AXION_CPU_SMALL_CORES := 0,1,2,3
AXION_CPU_BIG_CORES := 4,5,6,7 
AXION_CPU_BG := 0-2
AXION_CPU_FG := 0-7
AXION_CPU_LIMIT_BG := 0-1
AXION_CPU_UNLIMIT_UI := 0-7
AXION_CPU_LIMIT_UI := 0-4
AXION_CPU_DISPLAY := 4-7
AXION_CPU_AUDIO := 0-3
AXION_DEBUGGING_ENABLED := true

PRODUCT_NAME := axion_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Poco
PRODUCT_MODEL := 22021211RG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="munch-user 13 RKQ1.211001.001 V816.0.9.0.ULMMIXM release-keys" \
    BuildFingerprint=POCO/munch_global/munch:13/RKQ1.211001.001/V816.0.9.0.ULMMIXM:user/release-keys
