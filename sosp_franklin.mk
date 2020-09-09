#
# Copyright (C) 2020 SOSP-OS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/amlogic/franklin/device.mk)

# Inherit some common sosp stuff.
$(call inherit-product, vendor/sosp/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := sosp_franklin
PRODUCT_DEVICE := franklin
PRODUCT_BRAND := Amlogic
PRODUCT_MODEL := HK1 PLAY
PRODUCT_MANUFACTURER := Amlogic

PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
