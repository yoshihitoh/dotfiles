#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd $(dirname $0); pwd)"
export HOMEBREW_BUNDLE_FILE_GLOBAL="$SCRIPT_DIR/Brewfile"

brew_install() {
  brew bundle --global
}

main() {
  brew_install
}

main
