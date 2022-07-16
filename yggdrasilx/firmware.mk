LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),yggdrasilx)

RADIO_FILES := $(wildcard $(LOCAL_PATH)/radio/*.img)
$(foreach f, $(notdir $(RADIO_FILES)), \
    $(call add-radio-file,radio/$(f)))

ifeq ($(strip $(VOLLA_BUILD_FLAVOR)),)
    $(call add-radio-file,radio/logo.bin)
else
    $(call add-radio-file,$(VOLLA_BUILD_FLAVOR)/logo.bin)
endif

endif
