# Inherit Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Set shipping level to 35 (Android 15)
PRODUCT_SHIPPING_API_LEVEL := 35

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd
