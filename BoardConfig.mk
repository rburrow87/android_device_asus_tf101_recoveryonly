#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# 
# This is mostly from AOKP 
#  https://github.com/AOKP/device_asus_tf101
#

BOARD_USES_GENERIC_AUDIO := false
USE_CAMERA_STUB := false
TARGET_HAS_DOCK_BATTERY := true

# inherit from the proprietary version
-include vendor/asus/tf101/BoardConfigVendor.mk

# Board naming
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := ventana

# Target arch settings
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Boot/recovery image settings
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 

# Todo fix these values to the specific sizes
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880	
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912	
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14372306944	
BOARD_FLASH_BLOCK_SIZE := 131072 

# Prebuilt kernel
TARGET_PREBUILT_KERNEL := device/asus/tf101/kernel

# Custom tools
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/asus/tf101/releasetools/tf101_ota_from_target_files

# Recovery options
#BOARD_CUSTOM_BOOTIMG_MK := device/asus/tf101/recovery/recovery.mk
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_INITRC := device/asus/tf101/recovery/init.rc
BOARD_HAS_SDCARD_INTERNAL := true

BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM := ext4

# More recovery options
TARGET_RECOVERY_PRE_COMMAND := "echo 'boot-recovery' > /dev/block/mmcblk0p3; sync"
BOARD_XHDPI_RECOVERY := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/asus/tf101/recovery_ui.c

