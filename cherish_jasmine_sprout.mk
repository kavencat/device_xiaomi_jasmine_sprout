#
# Copyright (C) 2018-2021 The LineageOS Project
# Copyright (C) 2021 Pixel Experience
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Inherit some common Pixel Experience stuff
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)
TARGET_INCLUDE_STOCK_ARCORE := false

# We are a phone
IS_PHONE := true

# Gapps Architecture
TARGET_GAPPS_ARCH := arm64

# Boot Aniamation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from jasmine_sprout device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

#Cherish Stuffs
USE_LEGACY_BOOTANIMATION := true
CHERISH_BUILD_TYPE := UNOFFICIAL
WITH_GMS := true

# Cherish props
#CHERISH_MAINTAINER := kavencat
CHERISH_CHIPSET := sdm660
CHERISH_BATTERY := 3010mAh
CHERISH_DISPLAY := 1080x2160

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi A2
PRODUCT_NAME := cherish_jasmine_sprout

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
