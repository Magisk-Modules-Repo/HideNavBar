# Fullscreen/Immersive Gesture Mods for Android 10-11

<div align="center">
  <img src="https://img.shields.io/badge/Version-v8.1-blue"
</div>

![](https://i.imgur.com/vcXAreJ.png)

This Magisk Module lets you customize the Android 10-11 gestures.

## Requirements
- Android 10-11
- Magisk 20+

## Modes

Android Default

![](https://i.imgur.com/3GIKuoE.jpg)

Fullscreen

![](https://i.imgur.com/q0vTxdR.png)

Immersive (With the Pill + Default Spacing under the Keyboard)

![](https://i.imgur.com/x1zcFTn.jpg)

![](https://i.imgur.com/ZPdYrom.jpg)

Immersive (With the Pill + Small Spacing under the Keyboard)

![](https://i.imgur.com/siUBxhY.jpg)

Immersive (Without the Pill + Default Spacing under the Keyboard)

![](https://i.imgur.com/q0vTxdR.png)

![](https://i.imgur.com/FpdqBfb.jpg)

Immersive (Without the Pill + Small Spacing under the Keyboard)

![](https://i.imgur.com/8JrB5uZ.jpg)

## Installation
1. Flash this module.
2. Reboot.
3. Enjoy!

## Special thanks
- [Rhyse Simpson](https://t.me/Skittles9823) for his help with the initial installer script 

- [Nebulart](https://t.me/nebulart) for the banner

- [samchugit](https://github.com/samchugit) for making the original immersive gestures module

- All Custom ROMs who made my module an official feature in their ROM (AOSIP, Havoc & etc)

## Links
- [GitHub](https://github.com/Magisk-Modules-Repo/HideNavBar) 
- [Telegram](https://t.me/DanGLES3)

## Disclaimer
- This module won't disable the navbar, so if you want to use Fluid NG on Android 11 then this module isn't for you
- This module won't work on devices running MIUI

## Known Issues 
- Hide pill in immersive mode currently doesn't work on LG devices (this is being investigated)
- If you're experiencing issues related to GCam after installing the module there is currently nothing i can do (that's outside my control)
- Navbar coloring is broken on Android 11 (no fix for it is available atm)

## Changelog
### v8.1
- Fix for Immersive+default sensitivity not getting properly installed
### v8.0
- Allow changing gesture sensitivity (for users who may prefer Android's default gesture sensitivity)
### v7.2
- Fix fullscreen gestures installation (apologies for the inconvenience)
### v7.1
- Added new options during install

- Small keyboard bar (for immersive mode): Allows you to have less spacing underneath the keyboard

- Hide Pill (for immersive mode): Allows you to have a near fullscreen experience while still keeping the spacing underneath the keyboard
### v7.0
- Switch to the MMT-EX template and added immersive gestures by [samchugit](https://github.com/samchugit/Immersive_Gestural_Nav_Bar) as an option 
### v6.7
- Fix gesture option disappearing on later Android 11 builds
### v6.6 
- Hotfix for Android 11 beta
### v6.5
- Lowered gesture area to 18dp to reduce conflicts with apps
### v6.4
- Fix Android 11 support
### v6.2
- Add support for Android 11/R (untested as Magisk isn't avaliable for Android R yet)
### v6.1
- Block installation on MIUI as it's incompatible with the module
### v6.0
- Added support for ROMs that use /vendor/overlays for their gesture overlays
### v5.0
- Update to the latest Magisk module template and some minor clean ups in the code
### v4.0
- Hopefully fixed the issue that made so uninstalling the module made gestures completely unavailable on some ROMs
### v3.0
- Reduced conflict with some apps (like Gboard) by slightly lowering the gesture trigger area
### v2.0
- Hide gesture bar correctly in landscape
### v1.0
- Initial release
