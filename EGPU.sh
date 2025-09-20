#!/bin/bash
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u)/bus
# Avvia configurazione eGPU
all-ways-egpu set-boot-vga egpu
all-ways-egpu set-compositor-primary egpu
sudo systemctl restart display-manager
