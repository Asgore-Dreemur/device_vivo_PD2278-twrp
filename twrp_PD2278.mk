# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk) # vab加载到vendor boot里使用

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/vivo/PD2278/device.mk)

# Device identifier
PRODUCT_DEVICE := PD2278
PRODUCT_NAME := twrp_PD2278
PRODUCT_BRAND := Vivo
PRODUCT_MODEL := Y78
PRODUCT_MANUFACTURER := vivo

PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true
