# Fullscreen Gestures for Android 10

This Magisk module enables fullscreen gestures for Android 10. Both the navbar and pill will be hidden in order to maximize screen space.

If you still want the pill and the space underneath the keyboard you should try [Immersive Gestural Navigation Bar for Android 10](https://github.com/samchugit/Immersive_Gestural_Nav_Bar)

## Requirements
- Android 10 (Android 11 support is untested atm) 
- Magisk 20+

## Installation
1. Flash this module.
2. Reboot.
3. Enjoy!

## Links
- [GitHub](https://github.com/Magisk-Modules-Repo/HideNavBar) 
- [Telegram](https://t.me/DanGLES3)

## Disclaimer
- This module won't work on devices running MIUI

## Changelog
### v1.0
- Initial release
### v2.0
- Hide gesture bar correctly in landscape
### v3.0
- Reduced conflict with some apps (like Gboard) by slightly lowering the gesture trigger area
### v4.0
- Hopefully fixed the issue that made so uninstalling the module made gestures completely unavailable on some ROMs
### v5.0
- Update to the latest Magisk module template and some minor clean ups in the code
### v6.0
- Added support for ROMs that use /vendor/overlays for their gesture overlays
### v6.1
- Minor update
- Block installation on MIUI as it's incompatible with the module
### v6.2
- Add support for Android 11/R (untested as Magisk isn't avaliable for Android R yet)
### v6.3
- Update to latest module installer/update-binary (now requires Magisk 20.x and up)
