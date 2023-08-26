#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from sofiar device
$(call inherit-product, device/motorola/sofiar/device.mk)

PRODUCT_DEVICE := sofiar
PRODUCT_NAME := lineage_sofiar
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(8) power
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sofiar_retail-user 11 RPES31.Q4U-47-35-11 5f1af release-keys"

BUILD_FINGERPRINT := motorola/sofiar_retail/sofiar:11/RPES31.Q4U-47-35-11/5f1af:user/release-keys
