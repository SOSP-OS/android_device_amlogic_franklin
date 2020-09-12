#
# Product-specific compile-time definitions.
#
# The generic product target doesn't have any hardware-specific pieces.
# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
TARGET_USES_64_BIT_BINDER := true
ENABLE_CPUSETS := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Platform
BOARD_VENDOR := amlogic
TARGET_SOC := s905x2
TARGET_BOARD_HARDWARE := amlogic
TARGET_BOARD_PLATFORM := g12a
TARGET_BOARD_PLATFORM_GPU := mali-g31mp2
TARGET_BOOTLOADER_BOARD_NAME := u213
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Vulkan
BOARD_INSTALL_VULKAN := true
# BT configs
BOARD_HAVE_BLUETOOTH := false

# generic wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211

# Graphics
USE_OPENGL_RENDERER := true

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true
BOARD_VNDK_VERSION := current

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_DTBOIMG_PARTITION_SIZE := 0x0800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x074000000
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE ?= ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_RECOVERY_FORCE_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_FSTAB := device/amlogic/franklin/rootdir/recovery.fstab
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_AVB_ENABLE := false

# Kernel

BOARD_KERNEL_OFFSET      := 0x1080000
BOARD_KERNEL_TAGS_OFFSET := 0x1000000
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS     := --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_BOOT_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_KERNEL_CMDLINE += no_console_suspend console=ttyAML0,115200 earlycon
BOARD_KERNEL_CMDLINE += printk.devkmsg=on
BOARD_KERNEL_CMDLINE += androidboot.boot_devices=soc/ffe07000.mmc 
BOARD_KERNEL_CMDLINE += init=/init
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware
BOARD_KERNEL_CMDLINE += androidboot.hardware=franklin
ifneq ($(TARGET_SELINUX_ENFORCE), true)
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
endif
ifeq ($(TARGET_BUILTIN_EDID), true)
BOARD_KERNEL_CMDLINE += drm.edid_firmware=edid/1920x1080.bin
endif

USE_E2FSPROGS := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
TARGET_USES_MKE2FS := true
TARGET_USES_HWC2 := true

BOARD_SEPOLICY_DIRS += \
        device/amlogic/franklin/sepolicy

DEVICE_MANIFEST_FILE := device/amlogic/franklin/manifest.xml

DEVICE_MATRIX_FILE := device/amlogic/franklin/compatibility_matrix.xml
# Generate an APEX image for experiment b/119800099.
DEXPREOPT_GENERATE_APEX_IMAGE := true