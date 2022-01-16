#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

include device/google/bonito/device-lineage.mk

# Maintainer overlay
DEVICE_PACKAGE_OVERLAYS += \
    overlay-bonito

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a XL
PRODUCT_NAME := bliss_bonito


PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT==bonito \
    PRIVATE_BUILD_DESC="bonito-user 12 SQ1A.220105.002 7961164 release-keys"

BUILD_FINGERPRINT := google/bonito/bonito:12/SQ1A.220105.002/7961164:user/release-keys

$(call inherit-product, vendor/google/bonito/bonito-vendor.mk)
