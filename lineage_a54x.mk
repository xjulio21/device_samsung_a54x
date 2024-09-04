#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a54x device
$(call inherit-product, device/samsung/a54x/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_DEVICE := a54x
PRODUCT_NAME := lineage_a54x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A546E
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a54xnsxx-user 14 UP1A.231005.007 A546EXXU9CXH4 release-keys"

BUILD_FINGERPRINT := samsung/a54xnsxx/a54x:14/UP1A.231005.007/A546EXXU9CXH4:user/release-keys
