# Volume Key Selector - Addon that allows the use of the volume keys to select option in the installer

## Instructions:
* Use $VKSEL variable whenever you want to call the volume key selection function. The function returns true if user selected vol up and false if vol down
Ex: if $VKSEL; then
      echo "true"
    else
      echo "false"
    fi
* If you want to use the bixby button on samsung galaxy devices, [check out this post here](https://forum.xda-developers.com/showpost.php?p=77908805&postcount=16) and modify the install.sh functions accordingly

## Notes:
* Each volume key selector method will timeout after 3 seconds in the event of incompatibility or error

## Included Binaries/Credits:
* [keycheck binary](https://github.com/sonyxperiadev/device-sony-common-init/tree/master/keycheck) compiled by me [here](https://github.com/Zackptg5/Keycheck)
