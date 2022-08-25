# Fullscreen/Immersive Gesture Tweaks for Android 10-13

THIS REPO HAS BEEN MOSTLY DISCONTINUED AS OF MAGISK'S DISABLING OF THE REPO FEATURE, TO ALWAYS DOWNLOAD MY UPDATED MODULE USE [FOX MODULE MANAGER](https://github.com/Fox2Code/FoxMagiskModuleManager/releases) AS MY MODULE IS NOW BEING DEVELOPED ON THE [ALT-REPO](https://github.com/Magisk-Modules-Alt-Repo/HideNavBar)

![](https://i.imgur.com/vcXAreJ.png)

This Magisk Module lets you tweak Android 10-13's gestures.

## Requirements
- Android 10-13
- Magisk 20+

## Installation 
1. Flash the module
2. Select the desired options on the volume selector
3. Reboot
4. Enjoy!

## Terminal Setup
 Run on a terminal app the following command 
 su -c hn

## Disclaimer
- Any option not working is due to incompatibility with your current ROM (there's little i can do about it)
- GSI compabitility isn't guaranteed due to Magisk's inconsistent GSI support
- For issues related to GCam after installing the module you may use the terminal setup tool to increase the navbar size slightly to workaround the issue
- Automatic navbar coloring doesn't work on Android 11+

## Links
- [GitHub](https://github.com/Magisk-Modules-Repo/HideNavBar) 
- [Telegram Channel](https://t.me/danmgk)

## Options

- Android Default

<p align="left">
  <img src="https://i.imgur.com/x1zcFTn.jpg">
</p>

- Fullscreen

<p align="left">
  <img width="463" height="51" src="https://i.imgur.com/q0vTxdR.png">
</p>

- Immersive (With the Pill + Default Keyboard Spacing)

<p align="left">
  <img src="https://i.imgur.com/x1zcFTn.jpg">
</p>

<p align="left">
  <img src="https://i.imgur.com/ZPdYrom.jpg">
</p>

- Immersive (With the Pill + Small Keyboard Spacing)

<p align="left">
  <img src="https://i.imgur.com/siUBxhY.jpg">
</p>

- Immersive (Without the Pill + Default Keyboard Spacing)

<p align="left">
  <img src="https://i.imgur.com/q0vTxdR.png">
</p>

<p align="left">
  <img src="https://i.imgur.com/FpdqBfb.jpg">
</p>

- Immersive (Without the Pill + Small Spacing under the Keyboard)

<p align="left">
  <img src="https://i.imgur.com/8JrB5uZ.jpg">
</p>


- Additionally back gestures can be disabled on Android 11-12 for either left side only (to access side menus on apps) or both sides (if one wishes to remap the back gestures with other apps)

### Translation
 If you wish to have the installer translated to your language send me a text file containing all lines (inside ui_print in common/install.sh) either on Github or my Email, omit special symbols such as á,ã

## Special Thanks
- [skittles9823](https://github.com/skittles9823) for his help with the initial install script 

- [Nebulart](https://t.me/nebulart) for the banner

- [Samchugit](https://github.com/samchugit) for making the original immersive gestures module

- [Zackptg5](https://github.com/Zackptg5) for the MMT-Ex template

- [Topjohnwu](https://github.com/topjohnwu) for making Magisk

- [RKBDI](https://t.me/RKBDI) for the Rboard module

- [Gnonymous7](https://github.com/Gnonymous7) for some general inspiration, if you want more visual tweaks make sure to check out their module [G-VisualMod](https://github.com/Magisk-Modules-Repo/G-VisualMod)

- All Custom ROMs who made my module an official feature in their ROM (AOSIP, Havoc & etc)

## Changelog
### v21.0
- Rewrite installer for Android 12+ to use fabricated overlays for higher compatibility 
- Added Gcam lag fix as install option (12+ atm)

  Translations needed for the Gcam fix option 

### v20.0-hotfix
- Fix terminal setup tool 
### v20.0
- Fix Android 10 support (which was broken since v14.0)
### v19.0
- Reworked Terminal config tool (su -c hn), should avoid issues related to zipsigner
- Properly support Rboard Theme Manager v3 to avoid conflicts
### v18.0
- Added Samsung A12 support
### v17.0
- Proper MIUI detection/install logic (should provide compatibility to MIUI based on Android 10, not tested)
### v16.4
- Removed unnecessary waiting during module install 
### v16.3
- Added Fox Manager Extension support (support link shortcut when installing the module)
- Try and improve the volume selector delay a bit
### v16.1
- Fix the Terminal Config tool
### v16.0
- Proper MIUI 13 support
### v15.0
- Added MIUI support (confirmed working on MIUI 13)
- Fixed Terminal Script not working on devices with pseudo/fake xbin folders
### v14.0
- Fixed miscelaneous error messages
- Fixed Terminal config tool on Android 13 (Google's fault this time lol)
- Tablet support (it works inconsisntently) 
### v13.0
- Full AAPT rewrite 
- Added terminal config tool for changing each navbar parameter
 (To use it run the following on a terminal app su -c hn)
### v12.0
- Fixed the Gcam lag when switching modes
### v11.0
- Preemptive Android 13 support (untested) 
### v10.0
- Added Support for Android 12L, and thank you all very much for your support over these 2 years of development
### v9.9
- Allow hiding the buttons underneath the keyboard in Immersive mode
### v9.8
- Fix Rboard checking for the keyboard spacing removal feature (apologies to RKBDI for the troubles)
### v9.7
- Automatically removes conflicting overlays during install (AKA some theme modules that include gesture overlays for no reason at all)
### v9.6
- More reliable language detection (should prevent issues where the installer shows no text)
### v9.5
- Added support for translations in the installer (currently included languages are English, Portuguese and Spanish)
### v9.4
- Allow disabling back gesture also on Android 10 (due to way A10 handles the back gesture it's only possible to disable them completely and on fullscreen mode only, if you have Xposed on A10 and wishes to disable only the left back gesture use this Xposed module https://github.com/kuba2k2/NoLeftBackGesture/releases/tag/v1.0)
### v9.3-hotfix
- Fix install (sorry for the inconvenience)
### v9.3
- Updated Volume selector (from MMT-EX), should resolve install issues on some devices
- Increased the timeout to 10s to give users time to read the options
### v9.2
- Reenable back gestures on NO (on the whether to disable back gestures or not) option 
### v9.1
- Reenable back gesture on uninstall (if user is unable to change the device's back gesture sensitivy from settings) 
### v9.0
- Allow disabling back gesture on A11-12 (Left only for side menus and Left & Right for gesture apps)
### v8.8
- Update MAXAPI to 31 to support the eventual stable A12 release 
### v8.7
- Update Volume selector
- Revised install logic
- Disable the Gboard spacing some Android 11 ROMs were using by default (users are still free to change/reenable the spacing with Rboard as I've made sure my code won't overlap with it)
### v8.6
- Fix and go back to using the new install logic on Android 11
### v8.5
- Revert to old install logic on Android 11 (attempts to bug fix module not installing correctly on some devices)


(if you notice any issues on Android 11 due to the new install logic report to me immediatelly)


For older changelogs check [here](https://github.com/Magisk-Modules-Alt-Repo/HideNavBar/blob/master/OC.md)
