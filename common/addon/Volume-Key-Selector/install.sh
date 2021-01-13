# External Tools

chmod -R 0755 $MODPATH/common/addon/Volume-Key-Selector/tools

chooseport() {
  # Keycheck binary by someone755 @Github, idea for code below by Zappo @xda-developers
  # Calling it first time detects previous input. Calling it second time will do what we want
  [ "$1" ] && local delay=$1 || local delay=3
  local error=false
  while true; do
    timeout 0 $MODPATH/common/addon/Volume-Key-Selector/tools/$ARCH32/keycheck
    timeout $delay $MODPATH/common/addon/Volume-Key-Selector/tools/$ARCH32/keycheck
    local SEL=$?
    if [ $SEL -eq 42 ]; then
      return 0
    elif [ $SEL -eq 41 ]; then
      return 1
    else
      $error && abort "Volume key error!"
      error=true
      echo "Volume key not detected. Try again"
    fi
  done
}
# Keep old variable from previous versions of this
VKSEL=chooseport