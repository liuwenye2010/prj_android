
LOCAL_PATH:= $(call my-dir)


include $(CLEAR_VARS)
LOCAL_MODULE := hello


LOCAL_C_INCLUDES += \
  $(LOCAL_PATH) \


  
ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
  LOCAL_C_INCLUDES += $(NDK_ROOT)/platforms/android-23/arch-arm/usr/include
else 
endif  

ifeq ($(TARGET_ARCH_ABI),arm64-v8a)
  LOCAL_C_INCLUDES += $(NDK_ROOT)/platforms/android-23/arch-arm64/usr/include
else
endif  


LOCAL_SRC_FILES := \
  $(LOCAL_PATH)/main.cpp 
  
LOCAL_CPPFLAGS += -pie -fPIE
LOCAL_LDFLAGS += -pie -fPIE

LOCAL_EXPORT_LDLIBS := -lc

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_EXECUTABLE)