JNI_LOCAL_PATH := $(call my-dir)
include $(JNI_LOCAL_PATH)/../build_common/native_common.mk
include $(JNI_LOCAL_PATH)/libusb/android/jni/Android.mk
include $(JNI_LOCAL_PATH)/hidapi/android/jni/Android.mk
include $(JNI_LOCAL_PATH)/upstream/src/Android.mk

