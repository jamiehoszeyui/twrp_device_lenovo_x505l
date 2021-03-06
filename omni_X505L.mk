#
# Copyright 2019 The Android Open Source Project
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
ALLOW_MISSING_DEPENDENCIES := true

# Release name
PRODUCT_RELEASE_NAME := X505L

# inherit the usual stuff...
#$(call inherit-product, build/target/product/product_launched_with_p.mk)
$(call inherit-product, build/target/product/aosp_base.mk)
$(call inherit-product, vendor/omni/config/common_tablet.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_X505L
PRODUCT_DEVICE := X505L
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X505L
PRODUCT_MANUFACTURER := LENOVO

# for FBE decryption 
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# for tzdata
PRODUCT_PACKAGES += \
    tzdata_twrp

