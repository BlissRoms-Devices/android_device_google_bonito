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

# Include Google apps by default
ifneq ($(TARGET_BUILD_GAPPS),false)
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)
endif

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true

# Build vendor image
BUILD_WITHOUT_VENDOR := false

# Utilities
PRODUCT_PACKAGES += \
    libjson \
    libtinyxml

# WiFi
PRODUCT_PACKAGES += \
    libwifi-hal-qcom \
    libcld80211

# Vehicle HAL
PRODUCT_PACKAGES += \
    android.hardware.automotive.vehicle@2.0-manager-lib

PRODUCT_PACKAGES += \
    libstagefright_bufferpool@2.0.1

# Citadel
PRODUCT_PACKAGES += \
    libnos_client_citadel \
    nos_app_avb \
    nos_app_keymaster \
    nos_app_weaver
