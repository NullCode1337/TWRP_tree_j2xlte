ifneq ($(filter j2xlte,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif

include $(CLEAR_VARS)
ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)
