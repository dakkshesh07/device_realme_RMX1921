#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Project Radiant stuff
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/radiant/config/common_full_phone.mk)

# Inherit from RMX1921 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX1921
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := radiant_RMX1921
PRODUCT_MODEL := Realme XT
#Official
SPARK_BUILD_TYPE := OFFICIAL

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 12 SQ1A.220105.002 7961164 release-keys" \
    PRODUCT_NAME="RMX1921"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/redfin/redfin:12/SQ1A.220105.002/7961164:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
