#
# Copyright (C) 2013 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common 8960 configs
$(call inherit-product, device/htc/msm8960-common/msm8960.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/mystul/overlay

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.qcom.rc:/root/init.qcom.rc \
    $(LOCAL_PATH)/ramdisk/fstab.operaul:/root/fstab.operaul \
    $(LOCAL_PATH)/ramdisk/init.qcom.sh:/root/init.qcom.sh \
    $(LOCAL_PATH)/ramdisk/init.operaul.rc:/root/init.operaul.rc \
    $(LOCAL_PATH)/ramdisk/init.operaul.usb.rc:/root/init.operaul.usb.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.operaul.rc:/root/ueventd.operaul.rc \
    $(LOCAL_PATH)/ramdisk/init.operaul.recovery.rc:/root/init.operaul.recovery.rc \
    $(LOCAL_PATH)/ramdisk/remount.operaul:/root/remount.operaul

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/configs/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/configs/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/configs/init.qcom.mdm_links.sh:/system/etc/init.qcom.mdm_links.sh \
    $(LOCAL_PATH)/configs/init.qcom.modem_links.sh:/system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/configs/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/configs/init.qcom.q6_links.sh:/system/etc/init.qcom.q6_links.sh \
    $(LOCAL_PATH)/configs/init.qcom.radio_links.sh:/system/etc/init.qcom.radio_links.sh

# HTC BT audio config
PRODUCT_COPY_FILES += \
 device/htc/mystul/configs/AudioBTID.csv:system/etc/AudioBTID.csv \
 device/htc/mystul/configs/AudioBTIDnew.csv:system/etc/AudioBTIDnew.csv

PRODUCT_PACKAGES += \
    libnetcmdiface

# Camera
PRODUCT_PACKAGES += \
    camera.msm8960

# GPS
PRODUCT_PACKAGES += \
    libloc_adapter \
    libloc_eng \
    libloc_api_v02 \
    libgps.utils \
    gps.msm8960

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf

# Sound configs
PRODUCT_COPY_FILES += \
    device/htc/mystul/dsp/tfa/tfa9887.config:system/etc/tfa/tfa9887.config \
    device/htc/mystul/dsp/tfa/tfa9887.patch:system/etc/tfa/tfa9887.patch \
    device/htc/mystul/dsp/tfa/tfa9887.speaker:system/etc/tfa/tfa9887.speaker \
    device/htc/mystul/dsp/tfa/playback.config:system/etc/tfa/playback.config \
    device/htc/mystul/dsp/tfa/playback.eq:system/etc/tfa/playback.eq \
    device/htc/mystul/dsp/tfa/playback.preset:system/etc/tfa/playback.preset \
    device/htc/mystul/dsp/tfa/recorder.config:system/etc/tfa/recorder.config \
    device/htc/mystul/dsp/tfa/recorder.eq:system/etc/tfa/recorder.eq \
    device/htc/mystul/dsp/tfa/recorder.preset:system/etc/tfa/recorder.preset \
    device/htc/mystul/dsp/tfa/ring.config:system/etc/tfa/ring.config \
    device/htc/mystul/dsp/tfa/ring.eq:system/etc/tfa/ring.eq \
    device/htc/mystul/dsp/tfa/ring.preset:system/etc/tfa/ring.preset \
    device/htc/mystul/dsp/tfa/video.config:system/etc/tfa/video.config \
    device/htc/mystul/dsp/tfa/video.eq:system/etc/tfa/video.eq \
    device/htc/mystul/dsp/tfa/video.preset:system/etc/tfa/video.preset \
    device/htc/mystul/dsp/tfa/voice.config:system/etc/tfa/voice.config \
    device/htc/mystul/dsp/tfa/voice.eq:system/etc/tfa/voice.eq \
    device/htc/mystul/dsp/tfa/voice.preset:system/etc/tfa/voice.preset

PRODUCT_COPY_FILES += \
    device/htc/mystul/dsp/sound_mfg.txt:system/etc/sound_mfg.txt \
    device/htc/mystul/dsp/sound_mfg_DMIC.txt:system/etc/sound_mfg_DMIC.txt

# Wifi configs
PRODUCT_PACKAGES += \
    device/htc/mystul/configs/wpa_supplicant.conf:system/etc/wpa_supplicant.conf \
    device/htc/mystul/configs/p2p_supplicant.conf:system/etc/p2p_supplicant.conf

PRODUCT_COPY_FILES += \
    device/htc/mystul/dsp/snd_soc_msm/snd_soc_msm_Sitar:/system/etc/snd_soc_msm/snd_soc_msm_Sitar

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/mystul/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/mystul/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/mystul/keylayout/operaul-keypad.kl:system/usr/keylayout/operaul-keypad.kl \
    device/htc/mystul/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/htc/mystul/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/mystul/idc/projector_input.idc:system/usr/idc/projector_input.idc

# Audio config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Thermal config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermald.conf:system/etc/thermald.conf

# Torch
PRODUCT_PACKAGES += \
    Torch

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb

PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true \
    persist.gps.qmienabled=true \
    ro.opengles.version=196608


# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_CHARACTERISTICS := nosdcard

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/htc/mystul/mystul-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
