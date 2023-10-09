#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from xpeng device
$(call inherit-product, device/motorola/xpeng/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_xpeng
PRODUCT_DEVICE := xpeng
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g200 5G

# Havoc-OS
PRODUCT_SYSTEM_PROPERTIES += \
    ro.havoc.device.name="moto g200 5G" \
    ro.havoc.group.url=https://t.me/g200s30development \
    ro.havoc.maintainer="Rogers Marques" \
    ro.havoc.maintainer.username=DevMarques \

# With GApps
WITH_GMS := true

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=xpeng_retail \
    PRIVATE_BUILD_DESC="xpeng_g-user 12 S1RXS32.50-13-20 3541e-0d9175 release-keys"

BUILD_FINGERPRINT := motorola/xpeng_g/xpeng:11/S1RXS32.50-13-20/3541e-0d9175:user/release-keys

