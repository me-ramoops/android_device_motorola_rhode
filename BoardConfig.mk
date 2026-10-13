# Platform
TARGET_BOARD_PLATFORM := bengal

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := $(PRODUCT_DEVICE)

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# A/B device flags
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += system system_ext product vbmeta_system

# bootimg configuration
BOARD_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt-5.15/kernel
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_AVB_ENABLE := true

# includes make_f2fs to support userdata partition in f2fs
TARGET_USERIMAGES_USE_F2FS := true

# Creates metadata partition mount point under root for
# the devices with metadata partition
BOARD_USES_METADATA_PARTITION := true

# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor

# Adjusted flags for decryption
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# Fix for copying *.ko
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true


##### TWRP Flags #####
TW_THEME := portrait_hdpi

# Include more languages than English
TW_EXTRA_LANGUAGES := true

# Brightness
TW_BRIGHTNESS_PATH := /sys/class/backlight/panel0-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 1800
TW_MAX_BRIGHTNESS := 3514

# Add support of able to wake with touch after sleep
TW_NO_SCREEN_BLANK := true

# Remove vibration support
TW_NO_HAPTICS := true

# Battery
# https://gerrit.twrp.me/c/android_bootable_recovery/+/6945
TW_USE_LEGACY_BATTERY_SERVICES := true

# Time
TARGET_RECOVERY_QCOM_RTC_FIX := true

# Statusbar icons flags
TW_STATUS_ICONS_ALIGN := center
TW_CUSTOM_CLOCK_POS := 50
TW_CUSTOM_CPU_POS := 280
TW_CUSTOM_BATTERY_POS := 790

# Use our own USB config
TW_EXCLUDE_DEFAULT_USB_INIT := true

# For mounting NTFS
TW_INCLUDE_NTFS_3G := true

# Use mke2fs for formatting ext4 partitions
TARGET_USES_MKE2FS := true

# Kernel module loading for touch, battery etc
TW_LOAD_VENDOR_MODULES := \
    "adapter_class.ko \
    smem.ko \
    minidump.ko \
    qmi_helpers.ko \
    pdr_interface.ko \
    qcom_ipc_logging.ko \
    qcom_glink.ko \
    qcom_glink_smem.ko \
    qcom_smd.ko \
    rproc_qcom_common.ko \
    pmic_glink.ko \
    altmode-glink.ko \
    iommu-logger.ko \
    qcom-scm.ko \
    secure_buffer.ko \
    qcom_iommu_util.ko \
    arm_smmu.ko \
    bam_dma.ko \
    bcl_pmic5.ko \
    bcl_soc.ko \
    boot_stats.ko \
    mmi_discrete_charger_class.ko \
    bq2589x_charger.ko \
    charger-ulog-glink.ko \
    debug-regulator.ko \
    proxy-consumer.ko \
    gdsc-regulator.ko \
    clk-qcom.ko \
    clk-dummy.ko \
    qcom-mpm.ko \
    rpm-smd.ko \
    clk-smd-rpm.ko \
    crypto-qti-tz.ko \
    crypto-qti-common.ko \
    sdhci-msm-scaling.ko \
    cqhci.ko \
    cw2217b_fg_mmi.ko \
    cx_ipeak.ko \
    dispcc-khaje.ko \
    dwc3-msm.ko \
    ehset.ko \
    f_fs_ipc_log.ko \
    qti-regmap-debugfs.ko \
    ucsi_glink.ko \
    fsa4480-i2c.ko \
    gcc-khaje.ko \
    qcom_glink_spss.ko \
    glink_probe.ko \
    i2c-msm-geni.ko \
    icc-rpm.ko \
    ipa_fmwk.ko \
    mem-offline.ko \
    mem_buf_dev.ko \
    mem_buf.ko \
    mmi_annotate.ko \
    mmi_info.ko \
    mmi_charger.ko \
    mmi_discrete_charger.ko \
    msm-mmrm.ko \
    qpnp-power-on.ko \
    msm-poweroff.ko \
    msm-tsens-driver.ko \
    msm_dma_iommu_mapping.ko \
    panel_event_notifier.ko \
    pinctrl-msm.ko \
    qcom_va_minidump.ko \
    spmi-pmic-arb.ko \
    msm_drm.ko \
    msm_geni_serial.ko \
    msm_gpi.ko \
    msm_qmp.ko \
    msm_sharedmem.ko \
    msm_sysstats.ko \
    nvmem_qcom-spmi-sdam.ko \
    nvmem_qfprom.ko \
    phy-generic.ko \
    phy-msm-snps-hs.ko \
    phy-msm-ssusb-qmp.ko \
    phy-qcom-ufs.ko \
    phy-qcom-ufs-qmp-v4-khaje.ko \
    phy-qcom-ufs-qrbtc-sdm845.ko \
    pinctrl-bengal.ko \
    pinctrl-khaje.ko \
    pinctrl-spmi-gpio.ko \
    pinctrl-spmi-mpp.ko \
    pm8941-pwrkey.ko \
    pmic-glink-debug.ko \
    pwm-qti-lpg.ko \
    qcom-apcs-ipc-mailbox.ko \
    qcom-cpufreq-hw.ko \
    qcom-dcvs.ko \
    qcom-i2c-pmic.ko \
    qcom-pmu-lib.ko \
    reboot-mode.ko \
    qcom-pon.ko \
    qcom-qpnp-qg.ko \
    qcom-smb1355-charger.ko \
    qcom-smb1398-charger.ko \
    qcom-vadc-common.ko \
    qcom-spmi-adc-tm5.ko \
    qcom-spmi-adc5.ko \
    regmap-spmi.ko \
    qcom-spmi-pmic.ko \
    qcom-spmi-temp-alarm.ko \
    qcom_cpu_vendor_hooks.ko \
    qcom_dma_heaps.ko \
    qcom_glink_rpm.ko \
    qcom_hwspinlock.ko \
    qcom_iommu_debug.ko \
    qcom_logbuf_vh.ko \
    sched-walt.ko \
    qcom_lpm.ko \
    qcom_pm8008-regulator.ko \
    qcom_wdt_core.ko \
    qcom_soc_wdt.ko \
    qcom_tsens.ko \
    qfprom-sys.ko \
    qnoc-qos-rpm.ko \
    qnoc-bengal.ko \
    usbpd.ko \
    qpnp-pdphy.ko \
    qpnp-smb5-main.ko \
    qpnp_adaptive_charge.ko \
    qrng_dlkm.ko \
    qrtr.ko \
    qrtr-smd.ko \
    qseecom_dlkm.ko \
    qti_battery_charger.ko \
    qti_battery_debug.ko \
    qti_qmi_cdev.ko \
    refgen.ko \
    rpm-smd-regulator.ko \
    rpm_smd_cooling_device.ko \
    rt9426a_fg_mmi.ko \
    tcpc_class.ko \
    rt_pd_manager.ko \
    rtc-pm8xxx.ko \
    sdhci-msm.ko \
    sgm4154x_charger.ko \
    sm5602_fg_mmi.ko \
    smcinvoke_dlkm.ko \
    smp2p.ko \
    socinfo.ko \
    spi-msm-geni.ko \
    sps_drv.ko \
    stub-regulator.ko \
    tcpc_aw35616.ko \
    tcpc_sgm7220.ko \
    ufshcd-crypto-qti.ko \
    ufs_qcom.ko \
    usb_bam.ko \
    usb_f_cdev.ko \
    usb_f_diag.ko \
    usb_f_gsi.ko"
TW_LOAD_VENDOR_BOOT_MODULES := true

# Include decryption support
TW_INCLUDE_CRYPTO := true
RECOVERY_SDCARD_ON_DATA := true
# include below when enabling decryption
# without these it may stuck on TWRP splash
TARGET_RECOVERY_DEVICE_MODULES += libion
RECOVERY_LIBRARY_SOURCE_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/libion.so

# Don't mount apex files (no need for now)
TW_EXCLUDE_APEX := true

# Debuging flags
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_INCLUDE_RESETPROP := true
