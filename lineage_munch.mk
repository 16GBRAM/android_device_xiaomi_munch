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

# Integrate Viper4fx
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

TARGET_DISABLE_EPPE := true
WITH_GMS := false
TARGET_OPTIMIZED_DEXOPT := true
BYPASS_CHARGE_SUPPORTED := false
WITH_BCR := true

PRODUCT_NAME := lineage_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Poco
PRODUCT_MODEL := 22021211RG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="munch-user 13 RKQ1.211001.001 V816.0.9.0.ULMMIXM release-keys" \
    BuildFingerprint=POCO/munch_global/munch:13/RKQ1.211001.001/V816.0.9.0.ULMMIXM:user/release-keys
