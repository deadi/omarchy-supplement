#!/bin/sh
set -eu

# First run only:
#   mega-login
#   # complete 2FA interactively

add_sync() {
  local="$1"
  remote="$2"

  # ensure local folder exists
  mkdir -p "$local"

  # try to add; if it already exists, just continue
  mega-sync "$local/" "$remote" >/dev/null 2>&1 || true
}

add_sync "$HOME/Obsidian/AdiOps" "/Obsidian/AdiOps"
add_sync "$HOME/Obsidian/Linux+" "/Obsidian/Linux+"
add_sync "$HOME/Obsidian/Zarchive" "/Obsidian/Zarchive"

mega-sync
