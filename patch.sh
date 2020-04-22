#!/bin/sh

# . patch.bat

adb wait-for-device
adb -e push ramdisk.img /data/local/tmp/ramdisk.img.gz
adb -e push magisk_emu.zip /data/local/tmp/magisk.zip
adb -e push update-binary /data/local/tmp/
adb -e push process.sh /data/local/tmp/
adb -e shell "sh /data/local/tmp/process.sh /data/local/tmp"
adb -e pull /data/local/tmp/ramdisk.img
