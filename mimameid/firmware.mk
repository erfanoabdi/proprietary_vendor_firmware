LOCAL_PATH := $(call my-dir)

ifneq ($(filter mimameid,$(TARGET_DEVICE)),)

RADIO_FILES := $(wildcard $(LOCAL_PATH)/radio/*)
$(foreach f, $(notdir $(RADIO_FILES)), \
    $(call add-radio-file,radio/$(f)))

endif
