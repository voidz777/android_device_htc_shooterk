LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE		:= twrp.fstab
LOCAL_MODULE_TAGS	:= optional 
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/twrp.fstab
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= choice_fn
LOCAL_MODULE_TAGS	:= optional 
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= sbin/choice_fn
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/sbin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= detect_key
LOCAL_MODULE_TAGS	:= optional 
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= sbin/detect_key
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/sbin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= htcbatt
LOCAL_MODULE_TAGS	:= optional 
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= sbin/htcbatt
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/sbin
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE		:= offmode_charging
LOCAL_MODULE_TAGS	:= optional 
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= sbin/offmode_charging
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/sbin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= power_test
LOCAL_MODULE_TAGS	:= optional 
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= sbin/power_test
LOCAL_MODULE_PATH	:= $(TARGET_RECOVERY_ROOT_OUT)/sbin
include $(BUILD_PREBUILT)
