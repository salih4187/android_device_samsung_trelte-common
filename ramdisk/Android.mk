LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE		:= fstab.universal5433
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= fstab.universal5433
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.power.rc
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= init.power.rc
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.samsung.rc
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= init.samsung.rc
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.wifi.rc
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= init.wifi.rc
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.universal5433.usb.rc
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= init.universal5433.usb.rc
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.universal5433.rc
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= init.universal5433.rc
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= ueventd.universal5433.rc
LOCAL_MODULE_STEM   := ueventd.rc
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_SRC_FILES		:= ueventd.universal5433.rc
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)
