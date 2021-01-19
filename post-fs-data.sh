#!/system/bin/sh
if grep 'ro.com.google.ime.kb_pad_port_b' /data/adb/modules/rboard-themes_addon/system.prop /data/adb/modules/gboardnonavbar/system.prop; then 
printf 'do nothing'
else
resetprop ro.com.google.ime.kb_pad_port_b 10.0
fi