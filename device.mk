#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# API level
PRODUCT_SHIPPING_API_LEVEL := 33

# Treble
PRODUCT_FULL_TREBLE := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := phone

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/a2dpsink_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dpsink_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_board_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_board_info.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_sec.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects_spatializer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_spatializer.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration_base.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_base.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/hearing_aid_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/mixer_gains.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_gains.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/mixer_usb_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_usb_default.xml \
    $(LOCAL_PATH)/configs/audio/mixer_usb_gray.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_usb_gray.xml \
    $(LOCAL_PATH)/configs/audio/mixer_usb_white.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_usb_white.xml \
    $(LOCAL_PATH)/configs/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/sec_audio_volume_curve.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sec_audio_volume_curve.xml \
    $(LOCAL_PATH)/configs/audio/situation_audio_policy_volumes_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/situation_audio_policy_volumes_sec.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_info.xml \
    $(LOCAL_PATH)/configs/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps_debug.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps_debug.conf
    
# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_c2_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_c2_sec_ape.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_ape.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_c2_sec_qcp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_qcp.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_c2.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml
    
# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage
      
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.hardware_keystore.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.hardware_keystore.xml \
    frameworks/native/data/etc/android.hardware.keystore.app_attest_key.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.keystore.app_attest_key.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.ese.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.ese.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.aware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.aware.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.device_id_attestation.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_id_attestation.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml
    
# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt  

# Rootdir
PRODUCT_PACKAGES += \
    gps.sh \
    enable_test_mode.sh \
    hdm_status.sh \
    init.insmod.sh \
    install-recovery.sh \
    mx_log_collection.sh \
    mx_logger.sh \
    mx_logger_dump.sh \

PRODUCT_PACKAGES += \
    fstab.s5e8835 \
    init.recovery.s5e8835.rc \
    init.recovery.samsung.rc \
    
# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/seccomp/codec2.vendor.base.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/codec2.vendor.base.policy \
    $(LOCAL_PATH)/configs/seccomp/codec2.vendor.ext.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/codec2.vendor.ext.policy \
    $(LOCAL_PATH)/configs/seccomp/mediaextractor_sec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor_sec.policy \
    $(LOCAL_PATH)/configs/seccomp/samsung.software.media.c2-base-policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/samsung.software.media.c2-base-policy \
    $(LOCAL_PATH)/configs/seccomp/samsung.software.media.c2-ext-policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/samsung.software.media.c2-ext-policy 
    
# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf
    
# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/btwl_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/btwl_registers.xml \
    $(LOCAL_PATH)/configs/wifi/build_id.txt:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/build_id.txt \
    $(LOCAL_PATH)/configs/wifi/cortexM0Plus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM0Plus.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM3.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM3_dbg.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM3_dbg.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM3_dwt.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM3_dwt.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM3_etm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM3_etm.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM3_fpb.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM3_fpb.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM3_itm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM3_itm.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM3_mpu.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM3_mpu.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM3_nvic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM3_nvic.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM3_scs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM3_scs.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM3_tpi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM3_tpi.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM7.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM7.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM7_dbg.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM7_dbg.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM7_dwt.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM7_dwt.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM7_fpb.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM7_fpb.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM7_itm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM7_itm.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM7_mpu.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM7_mpu.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM7_nvic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM7_nvic.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM7_scs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM7_scs.xml \
    $(LOCAL_PATH)/configs/wifi/cortexR7.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexR7.xml \
    $(LOCAL_PATH)/configs/wifi/hip_signals.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/hip_signals.xml \
    $(LOCAL_PATH)/configs/wifi/hydra_config.sdb:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/hydra_config.sdb \
    $(LOCAL_PATH)/configs/wifi/id.txt:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/id.txt \
    $(LOCAL_PATH)/configs/wifi/indoorchannel.info:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/indoorchannel.info \
    $(LOCAL_PATH)/configs/wifi/log-strings.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/log-strings.bin \
    $(LOCAL_PATH)/configs/wifi/m3_periph_dwt_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/m3_periph_dwt_registers.xml \
    $(LOCAL_PATH)/configs/wifi/m3_periph_fpb_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/m3_periph_fpb_registers.xml \
    $(LOCAL_PATH)/configs/wifi/m3_periph_itm_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/m3_periph_itm_registers.xml \
    $(LOCAL_PATH)/configs/wifi/m3_periph_nvic_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/m3_periph_nvic_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mb_ap2bt_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mb_ap2bt_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mb_ap2pmu_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mb_ap2pmu_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mb_ap2wl_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mb_ap2wl_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mb_apm2wlbt_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mb_apm2wlbt_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mb_cp2bt_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mb_cp2bt_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mb_cp2wl_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mb_cp2wl_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mb_gnss2wlbt_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mb_gnss2wlbt_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mb_wlbt2abox_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mb_wlbt2abox_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mb_wlbt2chub_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mb_wlbt2chub_registers.xml \
    $(LOCAL_PATH)/configs/wifi/mib_out.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mib_out.xml \
    $(LOCAL_PATH)/configs/wifi/moredump.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/moredump.bin \
    $(LOCAL_PATH)/configs/wifi/moredump.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/moredump.xml \
    $(LOCAL_PATH)/configs/wifi/mx140.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140.bin \
    $(LOCAL_PATH)/configs/wifi/mx140_bt.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_bt.hcf \
    $(LOCAL_PATH)/configs/wifi/mx140_common.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_common.hcf \
    $(LOCAL_PATH)/configs/wifi/mx140_wlan.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_wlan.hcf \
    $(LOCAL_PATH)/configs/wifi/mx140_wlan_sw.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_wlan_sw.hcf \
    $(LOCAL_PATH)/configs/wifi/mx140_wlan_t.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_wlan_t.hcf \
    $(LOCAL_PATH)/configs/wifi/mx140_wlan_t_sw.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_wlan_t_sw.hcf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/perb_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/perb_registers.xml \
    $(LOCAL_PATH)/configs/wifi/peri_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/peri_registers.xml \
    $(LOCAL_PATH)/configs/wifi/periph_gic_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/periph_gic_registers.xml \
    $(LOCAL_PATH)/configs/wifi/periph_int_ifc_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/periph_int_ifc_registers.xml \
    $(LOCAL_PATH)/configs/wifi/periph_scu_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/periph_scu_registers.xml \
    $(LOCAL_PATH)/configs/wifi/pert_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/pert_registers.xml \
    $(LOCAL_PATH)/configs/wifi/perw_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/perw_registers.xml \
    $(LOCAL_PATH)/configs/wifi/platform.txt:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/platform.txt \
    $(LOCAL_PATH)/configs/wifi/pmu_conf_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/pmu_conf_registers.xml \
    $(LOCAL_PATH)/configs/wifi/slsi_reg_database.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/slsi_reg_database.bin \
    $(LOCAL_PATH)/configs/wifi/symbols.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/symbols.dbg \
    $(LOCAL_PATH)/configs/wifi/unicli.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/unicli.dbg \
    $(LOCAL_PATH)/configs/wifi/unitab.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/unitab.dbg \
    $(LOCAL_PATH)/configs/wifi/univif.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/univif.dbg \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpal:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpal \
    $(LOCAL_PATH)/configs/wifi/xide_mib.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/xide_mib.dbg  

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.s5e8835:$(TARGET_COPY_OUT_RAMDISK)/fstab.s5e8835

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/a54x/a54x-vendor.mk)
