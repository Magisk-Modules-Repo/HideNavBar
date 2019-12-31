  # Don't install on API  # Don't install on API levels other than 29
  if [ ! $API -eq "29" ]; then
    abort "This module is for Android 10 only!"
  fi

if [ -d /system/overlay/NavigationBarModeGestural ]; then
  mkdir -p $MODPATH/system/overlay
  cp -rf $MODPATH/overlays/* $MODPATH/system/overlay/
elif [ -d /system/vendor/overlay/NavigationBarModeGestural ]; then
  mkdir -p $MODPATH/system/vendor/overlay
  cp -rf $MODPATH/overlays/* $MODPATH/system/vendor/overlay/
else
  mkdir -p $MODPATH/system/product/overlay
  cp -rf $MODPATH/overlays/* $MODPATH/system/product/overlay/
fi
rm -rf $MODPATH/overlays