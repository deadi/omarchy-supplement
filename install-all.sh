#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

#. "$SCRIPT_DIR/install-zsh.sh"
. "$SCRIPT_DIR/install-megacmd.sh"
. "$SCRIPT_DIR/install-tmux.sh"
. "$SCRIPT_DIR/install-ghostty.sh"
. "$SCRIPT_DIR/install-stow.sh"
. "$SCRIPT_DIR/install-dotfiles.sh"
. "$SCRIPT_DIR/install-hyprland-overrides.sh"

#. "$SCRIPT_DIR/set-shell.sh"
