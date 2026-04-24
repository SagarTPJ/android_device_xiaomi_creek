$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/xiaomi/creek/device.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := creek
PRODUCT_NAME := twrp_creek
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO M7
PRODUCT_MANUFACTURER := xiaomi
