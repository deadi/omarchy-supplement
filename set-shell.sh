#!/bin/bash

set -e

# Ensure zsh is installed
if ! command -v zsh &>/dev/null; then
  echo "zsh not found. Install it first."
  exit 1
fi

ZSH_PATH="$(command -v zsh)"

# Ensure zsh is in /etc/shells
if ! grep -qx "$ZSH_PATH" /etc/shells; then
  echo "Adding zsh to /etc/shells"
  echo "$ZSH_PATH" | sudo tee -a /etc/shells >/dev/null
fi

# Get current login shell (authoritative)
CURRENT_SHELL="$(getent passwd "$USER" | cut -d: -f7)"

if [ "$CURRENT_SHELL" = "$ZSH_PATH" ]; then
  echo "zsh already set as login shell"
  exit 0
fi

echo "Setting login shell to zsh: $ZSH_PATH"

# Set login shell
chsh -s "$ZSH_PATH" "$USER"

echo "Done. Log out and log back in."
