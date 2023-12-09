#!/bin/bash

storage1="/run/media/geck/Storage 1"
storage2="/run/media/geck/Storage 2"

if sudo mkdir -p "$storage1" && sudo mkdir -p "$storage2"; then
    echo "Directories created successfully."
else
    echo "Error: Failed to create directories." >&2
    exit 1
fi

if sudo mount /dev/sda1 "$storage1" && sudo mount /dev/sdb1 "$storage2"; then
    echo "Mounting successful."
else
    echo "Error: Failed to mount devices." >&2
    exit 1
fi

exec firefox &
exec kitty &
exec discord-canary &
exec flameshot
