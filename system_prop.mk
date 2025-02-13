# ADB Enable ADB Debugging By Default & Disable USB Debugging 
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.usb.config=adb
    
# ADB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.debuggable=1 \
    ro.debug_level=0x4948

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
	ro.vendor.audio_hal.disable_two_mic=true \
    ro.vendor.audio_hal.force_voice_config=wide

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path="/efs/bluetooth/bt_addr"

# Blur
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.supports_background_blur=0

# Boot directly from charger mode
PRODUCT_PROPERTY_OVERRIDES += \
	ro.enable_boot_charger_mode=1

# BPF
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.ebpf.supported=false

# Burn-in protection
PRODUCT_PROPERTY_OVERRIDES += \
	ro.systemui.burn_in_protection=true
	
# Camera
PRODUCT_PROPERTY_OVERRIDES += \
	camera2.portability.force_api=1
	
# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.image-dex2oat-filter=speed \
	dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
	debug.hwc.otf=1 \
	debug.hwc.winupdate=1 \
	ro.hardware.egl=mali \
	ro.hardware.vulkan=mali \
    ro.bq.gpu_to_cpu_unsupported=1 \
    ro.surface_flinger.running_without_sync_framework = true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers = 3 \
    debug.sf.latch_unsignaled=1 \
    debug.renderengine.backend=threaded \
    ro.opengles.version=196610
	
# Network
# Define default initial receive window size in segments.
PRODUCT_PROPERTY_OVERRIDES += \
    net.tcp.default_init_rwnd=60

# Nfc
PRODUCT_PROPERTY_OVERRIDES += \
	ro.nfc.fw_dl_on_boot=false \
    ro.nfc.sec_hal=true \
    ro.nfc.port="I2C"

# SoC
PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.manufacturer=Samsung \
    ro.soc.model=Exynos5433

# System
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vndk.version=current

# Treble
PRODUCT_PROPERTY_OVERRIDES += \
	persist.media.treble_omx=false

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

