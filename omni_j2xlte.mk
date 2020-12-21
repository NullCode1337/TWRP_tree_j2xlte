$(call inherit-product, vendor/pb/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, build/target/product/languages_small.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j2xlte
PRODUCT_NAME := omni_j2xlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J210F
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := Samsung Galaxy J2 2016
TARGET_VENDOR := samsung
