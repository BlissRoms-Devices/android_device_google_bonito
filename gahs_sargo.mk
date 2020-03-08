#
# Copyright (C) 2020 shagbag913
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, device/google/bonito/aosp_sargo.mk)
$(call inherit-product, vendor/gahs/config/common.mk)
$(call inherit-product, device/google/bonito/device-gahs.mk)
# Include sargo before bonito to use sargo versions of blobs if they exist
$(call inherit-product-if-exists, vendor/google/sargo/sargo-vendor.mk)
$(call inherit-product-if-exists, vendor/google/bonito/bonito-vendor.mk)

TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2280

PRODUCT_NAME := gahs_sargo
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a

# Spoof to pass SafetyNet
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sargo

include device/google/bonito/base_fingerprint.mk
BUILD_FINGERPRINT := google/sargo/sargo:$(BASE_FINGERPRINT):user/release-keys
