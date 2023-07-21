export THEOS=/home/weans/Documents/theos/

THEOS_DEVICE_IP = 192.168.1.144 # install to device from pc

ARCHS = arm64
#Add arm64e if it needed
DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1
THEOS_PACKAGE_SCHEME = rootless
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = lqmhhn

lqmhhn_LDFLAGS += 
lqmhhn_FRAMEWORKS =  UIKit Foundation Security QuartzCore CoreTelephony AVFoundation AudioToolbox CoreGraphics CoreText Accelerate GLKit SystemConfiguration GameController 


lqmhhn_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
lqmhhn_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-unused-variable -Wno-unused-value
lqmhhn_EXTRA_FRAMEWORKS += 
lqmhhn_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
lqmhhn_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-unused-variable -Wno-unused-value
lqmhhn_FILES = hhnios.mm $(wildcard SCLAlertView/*.m) $(wildcard SupportFile/*.m) 


include $(THEOS_MAKE_PATH)/tweak.mk




