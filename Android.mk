ifneq ($(filter shooter,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif

LOCAL_PATH := $(call my-dir)
include $(call all-makefiles-under,$(LOCAL_PATH))
