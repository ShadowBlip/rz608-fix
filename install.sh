#!/bin/bash
set -e

cp -v rz608.conf /etc/modprobe.d/rz608.conf
cp -v 99-rz608.rules /etc/udev/rules.d

exit 0
