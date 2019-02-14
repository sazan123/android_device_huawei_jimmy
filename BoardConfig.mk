#
# Copyright (C) 2019 The LineageOS Project
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

# Device path
LOCAL_PATH := device/huawei/jimmy

# Platform
TARGET_BOARD_PLATFORM := mt6750

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_BOARD_PLATFORM_GPU := mali-t860mp2
TARGET_USES_64_BIT_BINDER := true

# Architecture Extensions
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true

# MTK audio
BOARD_USES_MTK_AUDIO := true
USE_XML_AUDIO_POLICY_CONF := 1
USE_CUSTOM_AUDIO_POLICY := 1

# Block based ota (Disable build block rom)
BLOCK_BASED_OTA := false

# Camera
USE_CAMERA_STUB := true

# Legacy HAL
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# OTA assert
TARGET_OTA_ASSERT_DEVICE := jimmy,huawei6750_66_n

#Use dlmalloc instead of jemalloc for mallocs
MALLOC_SVELTE := true

# Display
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 1
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.5.0

# Partitions informations
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 50331648
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4529848320
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25371327488
BOARD_FLASH_BLOCK_SIZE := 131072

# Partitions types
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/fstab.mt6755
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

# GPS
BOARD_GPS_LIBRARIES := true
BOARD_MEDIATEK_USES_GPS := true

# FM
MTK_FM_SUPPORT := yes

# CM hardware
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# MTK Hardware
BOARD_USES_MTK_HARDWARE := true

# Kernel informations
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x14f88000
BOARD_SECOND_OFFSET := 0x00e88000
BOARD_TAGS_OFFSET := 0x03f88000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --board 1522815490 --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --second_offset $(BOARD_SECOND_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)

# Kernel Prebuilt
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# WiFi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:= /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP:= AP
WIFI_DRIVER_FW_PATH_STA:= STA
WIFI_DRIVER_FW_PATH_P2P:= P2P

# Platform
TARGET_BOOTLOADER_BOARD_NAME := mt6750

# Legacy blobs
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Images
TARGET_NO_BOOTLOADER := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Selinux
BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy
BOARD_SECCOMP_POLICY := $(LOCAL_PATH)/seccomp
BOARD_GLOBAL_CFLAGS += -DCOMPAT_SENSORS_M
# RIL
BOARD_RIL_CLASS := ../../../device/huawei/jimmy/ril
BOARD_CONNECTIVITY_MODULE := conn_soc

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# init
TARGET_PROVIDES_INIT_RC := true

# System.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/11270000.usb3/musb-hdrc/gadget/lun%d/file

# Includes
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Hack build
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

# Device vendor board
-include vendor/huawei/jimmy/BoardConfigVendor.mk