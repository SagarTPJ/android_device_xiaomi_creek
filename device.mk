$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Compatibility level
PRODUCT_SHIPPING_API_LEVEL := 34

PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd
