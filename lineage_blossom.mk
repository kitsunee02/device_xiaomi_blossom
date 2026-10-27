#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/blossom/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Malloc
PRODUCT_DISABLE_SCUDO := true

scr_resolution := 720
TARGET_SUPPORTS_BLUR := true
# Blossom is low
TARGET_ENABLE_BLUR := false

PRODUCT_NAME := lineage_blossom
PRODUCT_DEVICE := blossom
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

-include vendor/private/keys/keys.mk

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="blossom-user 17 CP2A.260605.0126 20261026 release-keys" \
    BuildFingerprint=Xiaomi/blossom/blossom:17/CP2A.260605.0126/eng.fiyuu.20261026:userdebug/release-keys 

