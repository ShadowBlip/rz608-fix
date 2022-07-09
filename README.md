# rz608-fix
Fixes for the RZ608/MT7921K WiFi module in Linux using systemd.

- Fixes reboot kernel panic by unloading WiFi module mT7921e on shutdown/reboot.
- Fixes loss of WiFi on suspend.
- Adds the correct device ID to the MT7921E driver for kernels 5.13-5.16.3

# Installing

## From the AUR
```
sudo pikaur -S rz608-fix-git
sudo udevadm control -R
```

## From source
```
sudo make install
```

# Removing

## From the AUR
```
sudo pikaur -R rz608-fix-git
```

## From source
```
sudo make clean
```
