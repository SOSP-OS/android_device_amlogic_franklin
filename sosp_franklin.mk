#
# Copyright (C) 2020 SOSP-OS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit the full_base and device configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/amlogic/franklin/device.mk)

# Inherit some common sosp stuff.
$(call inherit-product, vendor/sosp/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := sosp_franklin
PRODUCT_DEVICE := franklin
PRODUCT_BRAND := Amlogic
PRODUCT_MODEL := HK1 PLAY
PRODUCT_MANUFACTURER := Amlogic

PRODUCT_SHIPPING_API_LEVEL := 28
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
