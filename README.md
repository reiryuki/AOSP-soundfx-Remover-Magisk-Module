# AOSP Sound Effects Remover Magisk Module

## Descriptions
- Removes stock AOSP system sound effects systemlessly (except proxy, visualizer, downmix, dynamics_processing, and audio_pre_processing)
- Makes your audio mod sounds clearer
- Removes Google Spatial Audio sound effect systemlessly
- Removes stock MusicFX AOSP and AudioFX LineageOS app systemlessly
- You will not be able to use most of EQ from Play Store that is using AOSP system sound effects
- AOSP sound effects are exist in every ROMs and vendors, not only in AOSP based ROM

## Screenshots
- https://t.me/androidryukimodsdiscussions/92

## Changelog

v2.17
- Fix wrong target in latest KernelSU

v2.16
- Abort installation if fail to mount mirror system

v2.15
- Improve /odm and /my_product support detection

v2.14
- Fix bug in uninstall.sh

v2.13
- Improve xml patch detection
- Fix conflict with modules_update while installing via recovery if Magisk installed

v2.12
- New Magisk and Kitsune Mask support (independent mirror)
- Remount partitions before mounting mirror to prevent mount failure caused by device/resource busy

v2.11
- Redirect /sdcard to /data/media/"$UID"
- Kitsune Mask detection

v2.10
- Add optional debug.log=1 for more detailed install log
- Fix mount partitions
- Specify UID at script

v2.9
- KernelSU support
- Magisk v26.1 support
- Save install log at /sdcard/..._recovery.log while installing via Recovery
- Fix mount required partitions while installing via Recovery
- Save uninstall log in /data/adb/modules/..._uninstall.log

v2.8
- Creates /sdcard/optionals.prop file if doesn't exist
- Using magiskpolicy --live --apply sepolicy.pfsd if sepolicy.sh=1
- Moved audioserver restart to the beginning of service.sh

## Requirements
- Magisk or Kitsune Mask or KernelSU or Apatch installed

## Installation Guide & Download Link
- Install this module via Magisk app or Kitsune Mask app or KernelSU app or Apatch app or Recovery if Magisk or Kitsune Mask installed
- This is also an audio mod so, you need to install AML Magisk Module https://t.me/ryukinotes/34 if using any other else audio mod module
- Reboot
- You can use https://github.com/reiryuki/Z-Folder-Script and check loaded_soundfx.txt created are your AOSP sound effects removed or not.

## Optionals
- Global: https://t.me/ryukinotes/35

## Troubleshootings
- Global: https://t.me/ryukinotes/34

## Support & Bug Report
- https://t.me/ryukinotes/54
- If you don't do above, issues will be closed immediately

## Credits and Contributors
- @HuskyDG
- https://t.me/viperatmos
- https://t.me/androidryukimodsdiscussions
- You can contribute ideas about this Magisk Module here: https://t.me/androidappsportdevelopment

## Sponsors
- https://t.me/ryukinotes/25


