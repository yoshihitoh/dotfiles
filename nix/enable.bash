#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")"; pwd)"

main() {
  local dest
  dest="$HOME/.config/nix/nix.conf"

  if [ -f "$dest" ]; then
    echo "nix config already exists"
    return
  fi

  mkdir -p "$(dirname "$dest")"
  ln -s "$SCRIPT_DIR/nix.conf" "$dest"
}

main
