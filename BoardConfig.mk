
# Transform compile definitions.

# Set this up here so that BoardVendorConfig.mk can override it
BOARD_USES_LIBSECRIL_STUB := false

# Use the non-open-source parts, if they're present
-include vendor/samsung/transform/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := s3c6410
TARGET_BOOTLOADER_BOARD_NAME := transform
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_ARCH_VARIANT_CPU := arm1176jzf-s
TARGET_GLOBAL_CFLAGS += -mtune=arm1176jzf-s -mfpu=vfp -mfloat-abi=softfp -O3
TARGET_GLOBAL_CPPFLAGS += -mtune=arm1176jzf-s -mfpu=vfp -mfloat-abi=softfp -O3

BOARD_VENDOR_USE_AKMD := akm8973

# Mobile data

BOARD_MOBILEDATA_INTERFACE_NAME := "ppp0"

# Releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/samsung/transform/releasetools/transform_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/samsung/transform/releasetools/transform_img_from_target_files

# Camera

USE_CAMERA_STUB := false
BOARD_CAMERA_LIBRARIES := libcamera libs3cjpeg

# Audio

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_LIBSECRIL_STUB := true

# 2d/3d

TARGET_BOARD_PLATFORM_GPU := fimg
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Video Devices
BOARD_USES_OVERLAY := true
BOARD_CAMERA_DEVICE := /dev/video0
BOARD_SECOND_CAMERA_DEVICE := /dev/video1
USE_OVERLAY_FORMAT_YCbCr_420_SP = true
BOARD_USE_FROYO_LIBCAMERA := true
BOARD_V4L2_DEVICE := /dev/video2

# WIFI defines
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH := "/system/libmodules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/system/etc/wifi/nvram_net.txt"

# MISC
WITH_DEXPREOPT := true
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
BUILD_WITH_FULL_STAGEFRIGHT := true
WITH_DEXPREOPT := true

BOARD_EGL_CFG := device/samsung/transform/egl.cfg
USE_OPENGL_RENDERER := false

# GPS
BOARD_GPS_LIBRARIES := libsecgps libsecril-client
BOARD_USES_GPSSHIM := true

# Prelinker
# PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=\$(TOP)/device/samsung/transform/prelink-linux-arm-transform.map
