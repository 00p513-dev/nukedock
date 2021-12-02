TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

ARCHS = arm64

ifneq ($(USER), gitpod)
ARCHS += arm64e
endif

SDKVERSION=12.2

TWEAK_NAME = NukeDock

NukeDock_FILES = Tweak.x
NukeDock_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
