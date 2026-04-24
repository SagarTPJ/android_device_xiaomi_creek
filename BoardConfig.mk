#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/creek

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_VARIANT := generic

# Kernel & Header (Required for Android 15/16 compatibility)
BOARD_BOOTIMG_HEADER_VERSION := 4
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_CONFIG := creek_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/creek

# Prebuilt Kernel
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
endif

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 104857600
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 104857600
BOARD_HAS_LARGE_FILESYSTEM := true

# A/B & Recovery Logic (Set for Standalone recovery.img)
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += product vendor system system_ext odm
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := false

# Platform & SDK (Bypassing TWRP 12.1 Version Checks)
TARGET_BOARD_PLATFORM := creek
PRODUCT_SHIPPING_API_LEVEL := 32
BOARD_SYSTEMSDK_VERSIONS := 32
PLATFORM_VERSION := 16
PLATFORM_VERSION_LAST_STABLE := 15
TARGET_SKIP_OTAPREOPT := true

# Fix for "could not make way for new symlink: root/vendor"
BOARD_ROOT_EXTRA_SYMLINKS := /vendor /mnt/vendor /system/bin/linker:/system/bin/linker64

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true

# Decryption Support
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true

# Workaround for modern property namespaces
BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true
BUILD_BROKEN_DUP_RULES := true
