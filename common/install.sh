##########################################################################################
# Custom Logic
##########################################################################################


ui_print "   ----- Fullscreen/Immersive Gestures ------"
ui_print " "
ui_print "   Choose your gestures mode   "
ui_print " "
ui_print "   Vol+ = Fullscreen, Vol- = Immersive"
if $VKSEL; then
     FS=true
     IM=false
     HP=false
     IMQS=false
     IMDS=false
     FSDS=false
else
	 IM=true
     FS=false
     FSDS=false
fi 

if $FS; then
    CODENAME=$(getprop ro.system.build.version.release)
    if [[ "$CODENAME" == "11" ]]; then
    mkdir -p "$MODPATH"/system/product/overlay
    cp -rf "$MODPATH"/Mods/R/* "$MODPATH"/system/product/overlay/
    elif [ -d /system/overlay/NavigationBarModeGestural ]; then
    mkdir -p "$MODPATH"/system/overlay
    cp -rf "$MODPATH"/Mods/Q/* "$MODPATH"/system/overlay/
    elif [ -d /system/vendor/overlay/NavigationBarModeGestural ]; then
    mkdir -p "$MODPATH"/system/vendor/overlay
    cp -rf "$MODPATH"/Mods/Q/* "$MODPATH"/system/vendor/overlay/
    else
    mkdir -p "$MODPATH"/system/product/overlay
    cp -rf "$MODPATH"/Mods/Q/* "$MODPATH"/system/product/overlay/
    fi
fi

if $IM; then
    CODENAME=$(getprop ro.system.build.version.release)
    if [[ "$CODENAME" == "11" ]]; then
    mkdir -p "$MODPATH"/system/product/overlay
    cp -rf "$MODPATH"/Mods/IMR/* "$MODPATH"/system/product/overlay/
    elif [ -d /system/overlay/NavigationBarModeGestural ]; then
    mkdir -p "$MODPATH"/system/overlay
    cp -rf "$MODPATH"/Mods/IMQ/* "$MODPATH"/system/overlay/
    elif [ -d /system/vendor/overlay/NavigationBarModeGestural ]; then
    mkdir -p "$MODPATH"/system/vendor/overlay
    cp -rf "$MODPATH"/Mods/IMQ/* "$MODPATH"/system/vendor/overlay/
    else
    mkdir -p "$MODPATH"/system/product/overlay
    cp -rf "$MODPATH"/Mods/IMQ/* "$MODPATH"/system/product/overlay/
    fi
fi

if $IM; then
     ui_print "   Hide pill and keep keyboard height/space?  "
     ui_print " "
     ui_print "   Vol+ = Yes , Vol- = No (default) "
     if $VKSEL; then
     HP=true
     else
     HP=false
     fi 
fi

if $HP; then
     if [ -d /system/overlay/NavigationBarModeGestural ]; then
    mkdir -p "$MODPATH"/system/overlay
    cp -rf "$MODPATH"/Mods/HP/* "$MODPATH"/system/overlay/
    elif [ -d /system/vendor/overlay/NavigationBarModeGestural ]; then
    mkdir -p "$MODPATH"/system/vendor/overlay
    cp -rf "$MODPATH"/Mods/HP/* "$MODPATH"/system/vendor/overlay/
    else
    mkdir -p "$MODPATH"/system/product/overlay
    cp -rf "$MODPATH"/Mods/HP/* "$MODPATH"/system/product/overlay/
    fi
fi

if $IM; then
     ui_print "   Reduce the size of the keyboard bar?  "
     ui_print " "
     ui_print "   Vol+ = Yes , Vol- = No (default) "
     if $VKSEL; then
     IMQS=true
     else
     IMQS=false
     fi 
fi

if $IMQS; then
     if [ -d /system/overlay/NavigationBarModeGestural ]; then
    mkdir -p "$MODPATH"/system/overlay
    cp -rf "$MODPATH"/Mods/IMQS/* "$MODPATH"/system/overlay/
    elif [ -d /system/vendor/overlay/NavigationBarModeGestural ]; then
    mkdir -p "$MODPATH"/system/vendor/overlay
    cp -rf "$MODPATH"/Mods/IMQS/* "$MODPATH"/system/vendor/overlay/
    else
    mkdir -p "$MODPATH"/system/product/overlay
    cp -rf "$MODPATH"/Mods/IMQS/* "$MODPATH"/system/product/overlay/
    fi
fi

if $IM; then
     ui_print "   Pick the gesture sensitivity.  "
     ui_print " "
     ui_print "   Vol+ = Low (Module Default) , Vol- = High (Android's Default) "
     if $VKSEL; then
     IMDS=false
     else
     IMDS=true
     fi
fi

if $IMDS; then
    if [ -d /system/overlay/NavigationBarModeGestural ]; then
    mkdir -p "$MODPATH"/system/overlay
    cp -rf "$MODPATH"/Mods/IMQDS/* "$MODPATH"/system/overlay/
    elif [ -d /system/vendor/overlay/NavigationBarModeGestural ]; then
    mkdir -p "$MODPATH"/system/vendor/overlay
    cp -rf "$MODPATH"/Mods/IMQDS/* "$MODPATH"/system/vendor/overlay/
    else
    mkdir -p "$MODPATH"/system/product/overlay
    cp -rf "$MODPATH"/Mods/IMQDS/* "$MODPATH"/system/product/overlay/
    fi
fi
    
if "$IMDS" && "$IMQS"; then
    if [ -d /system/overlay/NavigationBarModeGestural ]; then
    mkdir -p "$MODPATH"/system/overlay
    cp -rf "$MODPATH"/Mods/IMQSDS/* "$MODPATH"/system/overlay/
    elif [ -d /system/vendor/overlay/NavigationBarModeGestural ]; then
    mkdir -p "$MODPATH"/system/vendor/overlay
    cp -rf "$MODPATH"/Mods/IMQSDS/* "$MODPATH"/system/vendor/overlay/
    else
    mkdir -p "$MODPATH"/system/product/overlay
    cp -rf "$MODPATH"/Mods/IMQSDS/* "$MODPATH"/system/product/overlay/
    fi
fi
    
if $FS; then
     ui_print "   Pick the gesture sensitivity.  "
     ui_print " "
     ui_print "   Vol+ = Low (Module Default) , Vol- = High (Android's Default) "
     if $VKSEL; then
     FSDS=false
     else
     FSDS=true
     fi
fi

if $FSDS; then
    CODENAME=$(getprop ro.system.build.version.release)
    if [[ "$CODENAME" == "11" ]]; then
    mkdir -p "$MODPATH"/system/product/overlay
    cp -rf "$MODPATH"/Mods/RDS/* "$MODPATH"/system/product/overlay/
    elif [ -d /system/overlay/NavigationBarModeGestural ]; then
    mkdir -p "$MODPATH"/system/overlay
    cp -rf "$MODPATH"/Mods/QDS/* "$MODPATH"/system/overlay/
    elif [ -d /system/vendor/overlay/NavigationBarModeGestural ]; then
    mkdir -p "$MODPATH"/system/vendor/overlay
    cp -rf "$MODPATH"/Mods/QDS/* "$MODPATH"/system/vendor/overlay/
    else
    mkdir -p "$MODPATH"/system/product/overlay
    cp -rf "$MODPATH"/Mods/QDS/* "$MODPATH"/system/product/overlay/
    fi
fi


rm -rf "$MODPATH"/Mods
