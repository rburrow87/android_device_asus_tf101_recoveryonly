USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/asus/tf101/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := tf101

# 
# I just borrowed the CPU/ARCH info from another tegra device.
# May or may not be correct.
#
TARGET_BOARD_PLATFORM := tegra

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true

TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16

ARCH_ARM_HAVE_TLS_REGISTER := true


BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048


# 
# fix this up by examining /proc/mtd on a running device
# 
# ... /proc/mtd is empty with this device, I did my best figuring
# this out with a hexadecimal converter on the interwebs along with
# the flash.cfg from an nvflash zip. May or may not be accruate.
#
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x20000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/asus/tf101/kernel

BOARD_HAS_NO_SELECT_BUTTON := true


# 
# Pretty sure the following is accurate, the stock recovery.img
# uses ext4 in the fstab, so I assume it really uses ext4
#

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM := ext4

TARGET_USERIMAGES_USE_EXT4 := true

