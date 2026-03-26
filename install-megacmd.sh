#!/bin/sh

# install Megacmd, mega-sync
if pacman -Q megacmd >/dev/null 2>&1; then
  echo "megacmd already installed"
else
  #yay -S --noconfirm --needed megacmd
  yay -S --needed megacmd
fi
