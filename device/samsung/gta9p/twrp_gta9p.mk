#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# --- ORANGEFOX SPECIFIC VARIABLES ---
PRODUCT_RELEASE_NAME := gta9p
DEVICE_PATH := device/samsung/gta9p

# This line links your OrangeFox settings (theme, splash, etc.)
$(call inherit-product-if-exists, $(DEVICE_PATH)/fox_gta9p.mk)

# Inherit from gta9p device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

PRODUCT_DEVICE := gta9p
PRODUCT_NAME := twrp_gta9p
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X216B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Updated fingerprint to reflect the modern software base
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta9p-user 13 TP1A.220624.014 X216BXXU1BXA7 release-keys"

BUILD_FINGERPRINT := samsung/gta9p/gta9p:13/TP1A.220624.014/X216BXXU1BXA7:user/release-keys
