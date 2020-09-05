FINALPACKAGE=1
ARCHS = arm64
TARGET = iphone:13.3

include $(THEOS)/makefiles/common.mk

TWEAK_NAME =BetterPad12Springboard BetterPad12Camera
BetterPad12Springboard_FILES = TweakSpringboard.x
BetterPad12Springboard_CFLAGS = -fobjc-arc
BetterPad12Camera_FILES = TweakCamera.x
BetterPad12Camera_CFLAGS = -fobjc-arc


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload"

include $(THEOS_MAKE_PATH)/aggregate.mk
