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
     VAR3=a
else
	 IM=true
	 VAR3=a
fi 

if [ $FS = true ] ; then
    VAR=Q
    SS=true
fi

if [ $IM = true ] ;  then
    VAR=IMQ
    SS=true
fi

if [ $IM = true ] ; then
     ui_print "   Hide pill and keep keyboard height/space?  "
     ui_print " "
     ui_print "   Vol+ = Yes , Vol- = No (default) "
     if $VKSEL; then
     HP=true
     else
     HP=false
     fi 
fi

if [ $HP = true ] ; then
   VAR3=HP
fi

if [ $IM = true ] ; then
     ui_print "   Reduce the size of the keyboard bar?  "
     ui_print " "
     ui_print "   Vol+ = Yes , Vol- = No (default) "
     if $VKSEL; then
     IMQS=true
     else
     IMQS=false
     fi 
fi

if [ $IMQS = true ]; then
    VAR=IMQS
fi

if [ $SS = true ] ; then
     ui_print "   Pick the gesture sensitivity.  "
     ui_print " "
     ui_print "   Vol+ = Low (Module Default) , Vol- = High (Android's Default) "
     if $VKSEL; then
     GIDS=false
     else
     GIDS=true
     fi
fi

if "$GIDS"; then
    VAR="$VAR"DS
fi
    
if  [ "$IMDS" ] && [ "$IMQS" = true ] ; then
    VAR=IMQSDS
fi 

CODENAME=$(getprop ro.system.build.version.release)
if [[ "$CODENAME" == "11" ]]; then
mkdir -p "$MODPATH"/system/product/overlay
cp -rf "$MODPATH"/Mods/$VAR/* "$MODPATH"/system/product/overlay/
else
OP=$(find /system -type d -iname "navigationbarmodegestural" | cut -d 'N' -f1)
mkdir -p "$MODPATH""$OP"
cp -rf "$MODPATH"/Mods/"$VAR"/* "$MODPATH"/Mods/"$VAR3"/* "$MODPATH""$OP"
fi

rm -rf "$MODPATH"/Mods
rm -r /data/resource-cache/*
