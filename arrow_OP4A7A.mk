#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineageOS stuff
$(call inherit-product, vendor/arrow/config/common.mk)
# ARROW_GAPPS := true
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_INCLUDE_PIXEL_CHARGER := true

# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_OP4A7A
PRODUCT_DEVICE := OP4A7A
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PDEM30
PRODUCT_MANUFACTURER := OPPO

PRODUCT_GMS_CLIENTID_BASE := android-oppo

    TARGET_DEVICE=OP4A7A \
    TARGET_PROD=PDEM30 \
    PRIVATE_BUILD_DESC="PDEM30-user 12 RKQ1.211103.002/Q.202205171508:user/release-keys"

BUILD_FINGERPRINT := OPPO/PDEM30/OP4A7A:12/RKQ1.211103.002/Q.202205171508:user/release-keys
