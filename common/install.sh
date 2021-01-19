   ##########################################################################################
# Custom Logic
##########################################################################################

ui_print "   ----- Fullscreen/Immersive Gestures ------"
ui_print " "
ui_print "   Choose your gestures mode   "
ui_print " "
ui_print "   Vol+ = Fullscreen, Vol- = Immersive"
if $VKSEL; then
     VAR=Q
     VAR3=a
     SS=true
else
	 VAR=IMQ
	 SS=true
fi 

if [ $VAR = IMQ ] ; then
     ui_print "   Hide pill and keep keyboard height/space?  "
     ui_print " "
     ui_print "   Vol+ = Yes , Vol- = No (default) "
     if $VKSEL; then
     VAR3=HP
     else
     VAR3=a
     fi 
fi

if [ $VAR = IMQ ] ; then
     ui_print "   Reduce the size of the keyboard bar?  "
     ui_print " "
     ui_print "   Vol+ = Yes , Vol- = No (default) "
     if $VKSEL; then
     VAR=IMQS
     else
     VAR=$VAR
     fi 
fi

if [ $SS = true ] ; then
     ui_print "   Pick the gesture sensitivity.  "
     ui_print " "
     ui_print "   Vol+ = Low (Module Default) , Vol- = High (Android's Default) "
     if $VKSEL; then
     GIDS=false
     else
     VAR="$VAR"DS
     fi
fi

OP=$(find /system/overlay /product/overlay /vendor/overlay -type d -iname "navigationbarmodegestural" | cut -d 'N' -f1)
mkdir -p "$MODPATH"/system"$OP"
cp -rf "$MODPATH"/Mods/"$VAR"/* "$MODPATH"/Mods/"$VAR3"/* "$MODPATH"/system"$OP"
mv -f  "$MODPATH"/system/system/* "$MODPATH"/system/

rm -rf "$MODPATH"/Mods
