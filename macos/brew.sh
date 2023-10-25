#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd $(dirname $0); pwd)"
export HOMEBREW_BUNDLE_FILE_GLOBAL="$SCRIPT_DIR/Brewfile"

main() {
  brew bundle --global
}

main
