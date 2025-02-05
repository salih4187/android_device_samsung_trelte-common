LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := gpsd.cpp
LOCAL_SHARED_LIBRARIES := libsensor
LOCAL_MODULE := libshim_gpsd
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true

include $(BUILD_SHARED_LIBRARY)
