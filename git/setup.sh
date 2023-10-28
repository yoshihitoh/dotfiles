#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd $(dirname $0); pwd)"

make_symlink() {
  ln -s "$SCRIPT_DIR" "$HOME/.config/git"
}

main() {
  make_symlink
}

main
