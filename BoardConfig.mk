DEVICE_PATH         := device/samsung/j2xlte
BOARD_USE_EMMC      := true
BOARD_VENDOR        := samsung

BOARD_USES_SPRD_HARDWARE     := true
TARGET_BOOTLOADER_BOARD_NAME := SC9830I
TARGET_NO_BOOTLOADER         := true

# Architecture
TARGET_ARCH         := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI      := armeabi-v7a
TARGET_CPU_ABI2     := armeabi
TARGET_CPU_VARIANT  := cortex-a7
TARGET_CPU_SMP      := true
ARCH_ARM_HAVE_NEON  := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8

BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_OFFSET      := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100

BOARD_RAMDISK_OFFSET   := 0x01000000
BOARD_SECOND_OFFSET    := 0x00f00000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_KERNEL_ARCH        := arm
TARGET_KERNEL_HEADER_ARCH := arm
BOARD_KERNEL_IMAGE_NAME   := zImage

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
TARGET_PREBUILT_DTB    := $(DEVICE_PATH)/prebuilt/dt.img

BOARD_MKBOOTIMG_ARGS    := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --cmdline "console=ttyS1,115200n8" --dt $(TARGET_PREBUILT_DTB)
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk

TARGET_PROVIDES_LIBLIGHT         := true
BOARD_CHARGER_ENABLE_SUSPEND     := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_NO_CHARGER_LED             := true

# Platform
TARGET_BOARD_PLATFORM     := sc8830
TARGET_BOARD_PLATFORM_GPU := mali-400mp
TARGET_GLOBAL_CFLAGS      += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS    += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp

# Assert
TARGET_OTA_ASSERT_DEVICE        := j2xlte,j2xltedd
BOARD_HAS_NO_SELECT_BUTTON      := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/20200000.usb/gadget/lun0/file"

# File systems
BOARD_HAS_LARGE_FILESYSTEM           := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE     := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4           := true
TARGET_USERIMAGES_USE_F2FS           := true
BOARD_SUPPRESS_SECURE_ERASE          := true

# TWRP Configuration
TW_THEME          := portrait_hdpi
TW_DEVICE_VERSION := 0_nullcode
TW_MTP_DEVICE     := "/dev/mtp_usb"

TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_SCREEN_WIDTH   := 720
TARGET_SCREEN_HEIGHT  := 1280

TW_DEFAULT_BRIGHTNESS := 162
TW_MAX_BRIGHTNESS     := 255
TW_BRIGHTNESS_PATH    := "/sys/class/backlight/panel/brightness"

RECOVERY_GRAPHICS_FORCE_SINGLE_BUFFER := true
TW_NEW_ION_HEAP                       := true

TW_NO_EXFAT_FUSE        := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_SCREEN_BLANK      := true
TW_HAS_DOWNLOAD_MODE    := true

TW_EXCLUDE_TWRPAPP      := true
TW_EXCLUDE_SUPERSU      := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone1/temp"

TW_FORCE_USE_BUSYBOX     := true
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_CRYPTO       := true
BOARD_RECOVERY_SWIPE    := true

BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_FSTAB       := device/samsung/j2xlte/recovery.fstab
TW_EXCLUDE_DEFAULT_USB_INIT := true
