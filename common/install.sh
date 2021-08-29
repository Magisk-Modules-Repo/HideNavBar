   ##########################################################################################
# Custom Logic
##########################################################################################

LANG=$(getprop persist.sys.locale)
LANGS=${LANG::-3}
if [ -d $MODPATH/Lang/"$LANGS" ]; then
    :
else
    LANGS=en
fi

cat $MODPATH/Lang/"$LANGS"/"$LANGS"1.txt
if $VKSEL; then
     VAR=Q
     VAR3=a
     SS=true
else
	 VAR=IMQ
	 SS=true
fi 

if [ $VAR = IMQ ] ; then
     cat $MODPATH/Lang/"$LANGS"/"$LANGS"2.txt
     if $VKSEL; then
     VAR3=HP
     else
     VAR3=a
     fi 
fi

if [ $VAR = IMQ ] ; then
     cat $MODPATH/Lang/"$LANGS"/"$LANGS"3.txt
     if $VKSEL; then
     VAR=IMQS
     else
     VAR=$VAR
     fi 
fi

if [ $SS = true ] ; then
     cat $MODPATH/Lang/"$LANGS"/"$LANGS"4.txt
     if $VKSEL; then
     GIDS=false
     else
     VAR="$VAR"DS
     fi
fi

if [ "$API" -eq 29 ] && [ "$VAR" = Q ] ; then
     cat $MODPATH/Lang/"$LANGS"/"$LANGS"5.txt
     if $VKSEL; then
     cp -rf "$MODPATH"/Mods/DBGQ/* "$MODPATH"
     else
     DBG=false
     fi
fi

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

if [ $DBG = true ] ; then
     cat $MODPATH/Lang/"$LANGS"/"$LANGS"6.txt
     if $VKSEL; then
     settings put secure back_gesture_inset_scale_left -1
     else
     settings put secure back_gesture_inset_scale_left -1
     settings put secure back_gesture_inset_scale_right -1
     fi
fi

if [ $DBG = true ] ; then
    cat $MODPATH/Lang/"$LANGS"/"$LANGS"7.txt
fi    


OP=$(find /system/overlay /product/overlay /vendor/overlay -type d -iname "navigationbarmodegestural" | cut -d 'N' -f1)
mkdir -p "$MODPATH"/system"$OP"
cp -rf "$MODPATH"/Mods/"$VAR"/* "$MODPATH"/Mods/"$VAR3"/* "$MODPATH"/system"$OP"
mv -f  "$MODPATH"/system/system/* "$MODPATH"/system/

rm -rf "$MODPATH"/Mods
rm -rf "$MODPATH"/Lang
