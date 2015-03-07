#
# Copyright (C) 2011 The Evervolv Project
# Portions Copyright (C) 2011 The CyanogenMod Project
# Copyright (C) 2013 Dorian Snyder
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from common msm8660
-include device/htc/msm8660-common/BoardConfigCommon.mk

BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_PAGE_SIZE := 2048

# Camera
#BOARD_HTC_3D_SUPPORT := true

# Bluetooth/Wifi
-include device/htc/msm8660-common/bcm_bt.mk
-include device/htc/msm8660-common/bcmdhd.mk

# Kernel
TARGET_KERNEL_SOURCE   := kernel/htc/msm8960
BUILD_KERNEL           := true

# Custom lun file path
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 262144

TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
