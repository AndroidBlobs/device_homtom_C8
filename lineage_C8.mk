# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from C8 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := homtom
PRODUCT_DEVICE := C8
PRODUCT_MANUFACTURER := homtom
PRODUCT_NAME := lineage_C8
PRODUCT_MODEL := C8

PRODUCT_GMS_CLIENTID_BASE := android-homtom
TARGET_VENDOR := homtom
TARGET_VENDOR_PRODUCT_NAME := C8
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_k39tv1_bsp-user 8.1.0 O11019 1548409401 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := HOMTOM/C8/C8:8.1.0/O11019/1548409401:user/release-keys
