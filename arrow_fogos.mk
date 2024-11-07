#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from fogos device
$(call inherit-product, device/motorola/fogos/device.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

PRODUCT_NAME := arrow_fogos
PRODUCT_DEVICE := fogos
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g34 5G

DEVICE_MAINTAINER := Raunak Singh

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=fogos_g \
    PRIVATE_BUILD_DESC="fogos_g-user 14 U1UGS34M.23-82-2-3 da6528 release-keys"

BUILD_FINGERPRINT := motorola/fogos_g/fogos:11/U1UGS34.23-82-2-3/653ba:user/release-keys
