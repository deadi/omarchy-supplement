#!/bin/bash

if ! command -v mise &>/dev/null; then
    yay -S --noconfirm --needed mise
fi

MISE_PATH=$(command -v mise)
if [ -n "$MISE_PATH" ]; then
    mkdir -p "$HOME/.local/bin"
    ln -sf "$MISE_PATH" "$HOME/.local/bin/mise"
fi
