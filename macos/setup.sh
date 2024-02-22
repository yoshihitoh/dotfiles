#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd $(dirname $0); pwd)"
export HOMEBREW_BUNDLE_FILE_GLOBAL="$SCRIPT_DIR/Brewfile"

SCREENSHOT_DIR="$HOME/Documents/Screensots"

brew_install() {
  brew bundle --global
}

# reference: https://macos-defaults.com/
set_defaults() {
  # screenshot
  mkdir -p "$SCREENSHOT_DIR"
  defaults write com.apple.screencapture location "$SCREENSHOT_DIR"

  # Dock
  defaults write com.apple.dock "autohide" -bool "true"

  # key (1 = 15ms)
  defaults write -g InitialKeyRepeat -int 15 # (225ms)
  defaults write -g KeyRepeat -int 1 # (15ms)

  # auto-capitalization
  defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false  # Disable auto-capitalization

  # show hidden files by default
  defaults write com.apple.finder AppleShowAllFiles -bool true

  # show files with all extensions
  defaults write NSGlobalDomain AppleShowAllExtensions -bool true

  # display battery level in the menu bar
  defaults write com.apple.menuextra.battery ShowPercent -string "YES"

  # put the Dock on the right side
  defaults write com.apple.dock "orientation" -string "right" && killall Dock
}

main() {
  brew_install
  set_defaults
}

main
