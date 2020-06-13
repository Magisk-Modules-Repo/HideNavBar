  # Don't install on API  # Don't install on API levels other than 29
  if [ ! $API -ge "29" ]; then
    abort "This module is for Android 10-11 only!"
  fi

VEN=/system/vendor
[ -L /system/vendor ] && VEN=/vendor
if [ -f $VEN/build.prop ]; then BUILDS="/system/build.prop $VEN/build.prop"; else BUILDS="/system/build.prop"; fi
# Thanks Narsil/Sauron for the huge props list for various android systems
# Far easier to look there then ask users for their build.props
MIUI=$(grep "ro.miui.ui.version.*" $BUILDS)
if [ $MIUI ]; then
  ui_print " MIUI is not supported"
  abort " Aborting..."
fi

CODENAME=$(getprop ro.system.build.version.release)
if [[ "$CODENAME" == "11" ]]; then
  mkdir -p $MODPATH/system/product/overlay
  cp -rf $MODPATH/R/* $MODPATH/system/product/overlay/
elif [ -d /system/overlay/NavigationBarModeGestural ]; then
  mkdir -p $MODPATH/system/overlay
  cp -rf $MODPATH/Q/* $MODPATH/system/overlay/
elif [ -d /system/vendor/overlay/NavigationBarModeGestural ]; then
  mkdir -p $MODPATH/system/vendor/overlay
  cp -rf $MODPATH/Q/* $MODPATH/system/vendor/overlay/
else
  mkdir -p $MODPATH/system/product/overlay
  cp -rf $MODPATH/Q/* $MODPATH/system/product/overlay/
fi
rm -rf $MODPATH/R
rm -rf $MODPATH/Q
