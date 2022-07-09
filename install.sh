#!/bin/bash
set -e

echo "Adding reboot kernel panic fix."
cp -v mt7921e.shutdown /usr/lib/systemd/system-shutdown

echo "Adding suspend loss of WiFi on suspend fix"
cp -v systemd-suspend-mods.conf /etc/systemd-suspend-mods.conf
cp -v systemd-suspend-mods.sh /usr/lib/systemd/system-sleep/systemd-suspend-mods.sh

echo "Adding device ID for kernels 5.13-5.16.3"
cp -v rz608.conf /etc/modprobe.d/rz608.conf
cp -v 99-rz608.rules /etc/udev/rules.d

udevadm control -R

exit 0
