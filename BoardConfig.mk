# Copyright (C) 2009 The Android Open Source Project
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

# Include Path
TARGET_SPECIFIC_HEADER_PATH := device/htc/mystul/include

# inherit from common msm8960
-include device/htc/msm8960-common/BoardConfigCommon.mk

# Architecture
TARGET_CPU_VARIANT := krait

# Kernel
BOARD_KERNEL_BASE := 0x80400000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=operaul androidboot.selinux=permissive user_debug=31
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01400000
TARGET_KERNEL_SOURCE := kernel/htc/msm8960
TARGET_KERNEL_CONFIG := operaul_defconfig

# Audio
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
BOARD_USES_SEPERATED_VOIP := true
BOARD_AUDIO_AMPLIFIER := device/htc/mystul/libaudioamp
BOARD_HAVE_HTC_CSDCLIENT := true

# Bluetooth
#BOARD_HAVE_BLUETOOTH_BCM := true
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/mystul/bluetooth
#BOARD_BLUEDROID_VENDOR_CONF := device/htc/mystul/bluetooth/libbt_vndcfg.txt
#BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := false

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
COMMON_GLOBAL_CFLAGS += -DHTC_CAMERA_HARDWARE
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
USE_DEVICE_SPECIFIC_CAMERA := true

# Graphics
TARGET_DISPLAY_INSECURE_MM_HEAP := true

# GPS
BOARD_HAVE_NEW_QC_GPS := true

# RIL
BOARD_PROVIDES_LIBRIL := true
COMMON_GLOBAL_CFLAGS += -DNEW_LIBRIL_HTC

# Wifi related defines
WIFI_BAND                        := 802_11_ABG
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware/fw_bcm4334.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware/fw_bcm4334_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/firmware/fw_bcm4334_p2p.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610611712
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13220446208
BOARD_FLASH_BLOCK_SIZE := 131072

# cat /proc/emmc
#dev:        size     erasesize name
mmcblk0p22: 000ffa00 00000200 "misc"
mmcblk0p21: 00fffe00 00000200 "recovery"
mmcblk0p20: 01000000 00000200 "boot"
mmcblk0p32: 5ffffc00 00000200 "system"
mmcblk0p29: 00140200 00000200 "local"
mmcblk0p33: 13fffe00 00000200 "cache"
mmcblk0p34: 314000000 00000200 "userdata"
mmcblk0p25: 01400000 00000200 "devlog"
mmcblk0p27: 00040000 00000200 "pdata"
mmcblk0p30: 00010000 00000200 "extra"
mmcblk0p16: 02d00000 00000200 "radio"
mmcblk0p17: 00a00000 00000200 "adsp"
mmcblk0p15: 00100000 00000200 "dsps"
mmcblk0p18: 00500000 00000200 "wcnss"
mmcblk0p19: 007ffa00 00000200 "radio_config"
mmcblk0p23: 00400000 00000200 "modem_st1"
mmcblk0p24: 00400000 00000200 "modem_st2"
mmcblk0p31: 0616a000 00000200 "reserve"

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_RECOVERY_SWIPE := true
TARGET_USERIMAGES_USE_EXT4 := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"