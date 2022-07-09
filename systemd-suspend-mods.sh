#!/bin/bash

case $1 in
    pre)
        for mod in $(</etc/systemd-suspend-mods.conf); do
            rmmod $mod
        done
    ;;
    post)
        for mod in $(</etc/systemd-suspend-mods.conf); do
            modprobe $mod
        done
    ;;
esac
