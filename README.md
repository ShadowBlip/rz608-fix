# rz608-fix
Fixes for the RZ608/MT7921K WiFi module in Linux using systemd.

- Fixes reboot kernel panic by unloading WiFi module mT7921e on shutdown/reboot.
- Fixes loss of WiFi on suspend.
- Adds the correct device ID to the MT7921E driver for kernels 5.13-5.16.3

# Installing

## From the AUR
- Run ```pikaur -S rz608-fix-git``` as root.

## From source
- Run ```make install``` as root.

# Removing

## From the AUR
- Run ```pikaur -R rz608-fix-git``` as root.

## From source
- Run ```make clean``` as root.
