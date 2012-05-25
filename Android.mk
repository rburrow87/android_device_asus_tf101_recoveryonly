LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),tf101)

ifneq ($(TARGET_SIMULATOR),true)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif

endif
