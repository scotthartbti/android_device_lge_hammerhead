#!/system/bin/sh

# disable sysctl.conf to prevent ROM interference with tunables
# backup and replace PowerHAL with custom build to allow OC/UC to survive screen off
# create and set permissions for /system/etc/init.d if it doesn't already exist
mount -o rw,remount /system;
[ -e /system/etc/sysctl.conf ] && mv /system/etc/sysctl.conf /system/etc/sysctl.conf.fkbak;
[ -f /system/bin/mpdecision_bck ] || mv /system/bin/mpdecision /system/bin/mpdecision_bck
[ -f /system/bin/thermal-engine-hh_bck ] || mv /system/bin/thermal-engine-hh /system/bin/thermal-engine-hh_bck
mount -o ro,remount /system;
