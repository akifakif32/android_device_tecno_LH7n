#
# SPDX-FileCopyrightText: The Infinity-X Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/tecno/LH7n/device.mk)

# Inherit some common Infinity-X stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Infinity-X Specific Flags
INFINITY_BUILD_TYPE := OFFICIAL
INFINITY_MAINTAINER := "akif"
TARGET_BOOT_ANIMATION_RES := 1080
WITH_GAPPS := true
TARGET_SUPPORTS_BLUR := true

BOARD_VENDOR := TECNO
PRODUCT_NAME := infinity_LH7n
PRODUCT_DEVICE := LH7n
PRODUCT_MANUFACTURER := TECNO
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO LH7n

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=LH7n \
    BuildFingerprint=TECNO/LH7n-GL/TECNO-LH7n:14/UP1A.231005.007/241014V737:user/release-keys

# Time
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true

# Enable activity open override fix for low-end devices or devices affected by activity open/exit freezing issue
PERF_ANIM_OVERRIDE := true
