   ##########################################################################################
# Custom Logic
##########################################################################################

#Find and delete conflicting overlays
find /data/adb/modules -type d -not -path "*HideNavBar/system*" -iname "*navigationbarmodegestural*" -exec rm -rf {} \; 2>/dev/null 

#Detect system language for translation 
LANG=$(settings get system system_locales)
LANGS=$(echo ${LANG:0:2} )
if [ -f $MODPATH/Lang/"$LANGS"/"$LANGS"1.txt ]; then
    :
else
    LANGS=en
fi

#Standard volume selector stuff but with translations
#Fullscreen or immersive selection
cat $MODPATH/Lang/"$LANGS"/"$LANGS"1.txt
if $VKSEL; then
     VAR=Q
     VAR3=a
     VAR4=a
     SS=true
else
	 VAR=IMQ
	 SS=true
fi 

#Hide pill
if [ $VAR = IMQ ] ; then
     cat $MODPATH/Lang/"$LANGS"/"$LANGS"2.txt
     if $VKSEL; then
     VAR3=HP
     else
     VAR3=a
     fi 
fi

#Hide keyboard buttons 
if [ $VAR = IMQ ] ; then
     cat $MODPATH/Lang/"$LANGS"/"$LANGS"8.txt
     if $VKSEL; then
     VAR4=HKB
     else
     VAR4=a
     fi 
fi

#Small keyboard bar
if [ $VAR = IMQ ] ; then
     cat $MODPATH/Lang/"$LANGS"/"$LANGS"3.txt
     if $VKSEL; then
     VAR=IMQS
     else
     VAR=$VAR
     fi 
fi

#Gesture sensitivity 
if [ $SS = true ] ; then
     cat $MODPATH/Lang/"$LANGS"/"$LANGS"4.txt
     if $VKSEL; then
     GIDS=false
     else
     VAR="$VAR"DS
     fi
fi

#Disable back gesture on Q
if [ "$API" -eq 29 ] && [ "$VAR" = Q ] ; then
     cat $MODPATH/Lang/"$LANGS"/"$LANGS"5.txt
     if $VKSEL; then
     cp -rf "$MODPATH"/Mods/DBGQ/* "$MODPATH"
     else
     DBG=false
     fi
fi

#Disable back gesture on R+
if [ $API -ge 30 ] ; then
     cat $MODPATH/Lang/"$LANGS"/"$LANGS"5.txt
     if $VKSEL; then
     DBG=true
     else
     DBG=false
     settings delete secure back_gesture_inset_scale_left
     settings delete secure back_gesture_inset_scale_right
     fi
fi     

#Reenable back gesture if no is selected 
if [ $DBG = true ] ; then
     cat $MODPATH/Lang/"$LANGS"/"$LANGS"6.txt
     if $VKSEL; then
     settings put secure back_gesture_inset_scale_left -1
     else
     settings put secure back_gesture_inset_scale_left -1
     settings put secure back_gesture_inset_scale_right -1
     fi
fi

#Back gesture warning 
if [ $DBG = true ] ; then
    cat $MODPATH/Lang/"$LANGS"/"$LANGS"7.txt
fi    

#Detect original overlay location and install overlays there 
OP=$(find /system/overlay /product/overlay /vendor/overlay -type d -iname "navigationbarmodegestural" | cut -d 'N' -f1)
mkdir -p "$MODPATH"/system"$OP"
cp -rf "$MODPATH"/Mods/"$VAR"/* "$MODPATH"/Mods/"$VAR3"/* "$MODPATH"/Mods/"$VAR4"/* "$MODPATH"/system"$OP"
mv -f  "$MODPATH"/system/system/* "$MODPATH"/system/

#Junk cleaning
rm -rf "$MODPATH"/Mods
rm -rf "$MODPATH"/Lang
