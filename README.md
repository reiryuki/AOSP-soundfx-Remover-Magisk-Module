# AOSP soundfx Remover Magisk Module

## Descriptions
- Removes all or some standard AOSP system soundfx (except proxy, visualizer, downmix, and audio_pre_processing).
  Makes your audio mod sounds clearer.
  Removes MusicFX AOSP and AudioFX LineageOS also can't use most of EQ from Play Store.
  AOSP soundfx is exist in every ROMs and vendors, not only in AOSP based ROM.

## Screenshots
- https://t.me/androidryukimodsdiscussions/92

## Requirements
- Magisk installed

## Installation Guide
- Install the module via Magisk Manager or recovery
- This is also an audio mod, so, you need to install AML module if using any other audio mod modules
- Reboot
- You can check is your AOSP soundfx deactivated via Terminal Emulator:

  `su -c dumpsys media.audio_flinger`

## Optionals & Troubleshootings
- https://t.me/androidryukimodsdiscussions/29836
- https://t.me/androidryukimodsdiscussions/60861
- You can keep your MusicFX AOSP or AudioFX LineageOS by run terminal before installing this module:

  `su -c setprop fx.keep 1`

  Reinstall this module and reboot after.

## Bug Report
- https://t.me/androidryukimodsdiscussions/2618 ("z" folder is enough, no need logs)

## Credits
- https://t.me/viperatmos
- https://t.me/androidryukimodsdiscussions
- https://t.me/androidappsportdevelopment

## Thanks for Donations
- https://t.me/androidryukimodsdiscussions/2619
- https://www.paypal.me/reiryuki

## Download
- https://www.pling.com/p/1531943/
