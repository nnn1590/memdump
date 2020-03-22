LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := memdump
LOCAL_SRC_FILES := memdump.c
include $(BUILD_EXECUTABLE)
