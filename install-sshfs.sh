#!/bin/sh
set -eu

# install sshfs
if ! command -v sshfs >/dev/null; then
  sudo pacman -S --noconfirm --needed sshfs
fi
