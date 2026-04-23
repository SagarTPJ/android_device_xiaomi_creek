#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from creek device
$(call inherit-product, device/xiaomi/creek/device.mk)

PRODUCT_DEVICE := creek
PRODUCT_NAME := twrp_creek
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 15 4G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Matched to your WBOMIXM Global Firmware
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="creek_global-user 16 OS3.0.10.0.WBOMIXM release-keys" \
    PRODUCT_NAME="creek_global" \
    TARGET_DEVICE="creek"

BUILD_FINGERPRINT := Redmi/creek_global/creek:16/OS3.0.10.0.WBOMIXM:user/release-keys
