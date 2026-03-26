#!/bin/bash

set -e

# System aktualisieren
sudo pacman -Syyu --noconfirm

# Tailscale installieren
sudo pacman -S tailscale --noconfirm

# Dienst starten
sudo systemctl enable --now tailscaled
