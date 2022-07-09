#!/bin/bash
set -e

echo "Removing reboot kernel panic fix."
rm -v /usr/lib/systemd/system-shutdown/mt7921e.shutdown

echo "Removing loss of WiFi on suspend fix."
rm -v /etc/systemd-suspend-mods.conf
rm /usr/lib/systemd/system-sleep/systemd-suspend-mods.sh

echo "Removing Device ID fix for kernels 5.13-5.16.3"
rm -v /etc/modprobe.d/rz608.conf
rm -v /etc/udev/rules.d/99-rz608.rules 

udevadm control -R
exit 0
