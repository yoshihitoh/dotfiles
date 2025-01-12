#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd $(dirname $0); pwd)"

make_symlink() {
  local config_dir
  config_dir="$HOME/.config/git"

  if [ ! -e "$config_dir" ]; then
    ln -s "$SCRIPT_DIR" "$config_dir"
  fi
}

main() {
  make_symlink
}

main
