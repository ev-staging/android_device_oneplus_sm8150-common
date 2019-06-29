#
# Copyright 2015 The Android Open Source Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

PRODUCT_NAME := msmnile
PRODUCT_DEVICE := msmnile
PRODUCT_BRAND := qti
PRODUCT_MODEL := AOSP on msmnile
PRODUCT_MANUFACTURER := QUALCOMM
PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, device/qcom/msmnile/device.mk)
$(call inherit-product-if-exists, vendor/qcom/msmnile/device-vendor.mk)

VENDOR_SECURITY_PATCH := 2018-06-05

PRODUCT_PACKAGES += \
    Launcher3

