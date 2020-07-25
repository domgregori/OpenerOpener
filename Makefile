INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = OpenerOpener
OpenerOpener_FILES = OPNOpenerOpenerHandler.m
OpenerOpener_INSTALL_PATH = /Library/Opener
OpenerOpener_EXTRA_FRAMEWORKS = Opener

include $(THEOS_MAKE_PATH)/bundle.mk
