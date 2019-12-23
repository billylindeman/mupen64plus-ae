JNI_LOCAL_PATH := $(call my-dir)
include $(JNI_LOCAL_PATH)/../build_common/native_common.mk

include $(CLEAR_VARS)
LOCAL_MODULE := ae-bridge
LOCAL_STATIC_LIBRARIES := EGLLoader
LOCAL_C_INCLUDES := $(M64P_API_INCLUDES) $(GL_INCLUDES)
LOCAL_SRC_FILES := $(JNI_LOCAL_PATH)/src/ae_bridge.cpp
LOCAL_CFLAGS := $(COMMON_CFLAGS) -DEGL
LOCAL_CPPFLAGS := $(COMMON_CPPFLAGS) -std=c++11 -g
LOCAL_LDFLAGS := $(COMMON_LDFLAGS)
LOCAL_LDLIBS := -llog -lEGL -landroid
include $(BUILD_SHARED_LIBRARY)
