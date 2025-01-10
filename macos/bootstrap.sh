#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd $(dirname $0); pwd)"

activate_sudo_session() {
  sudo echo "hello" > /dev/null
}

install_homebrew() {
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo >> $HOME/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
}

activate_homebrew() {
  eval "$(/opt/homebrew/bin/brew shellenv)"
}

install_git() {
  brew install git
}

clone_dotfiles() {
  local dest
  dest="$1"
  git clone https://github.com/yoshihitoh/dotfiles "${dest}"
}

main() {
  # Sudo session must be activated before installing Homebrew.
  activate_sudo_session

  if ! command -v brew > /dev/null 2>&1; then
    install_homebrew
    activate_homebrew
  fi

  if ! command -v git > /dev/null 2>&1; then
    install_git
  fi

  local dotfiles_dir
  dotfiles_dir="${SCRIPT_DIR}/dotfiles"
  if [ ! -d "$dotfiles_dir" ]; then
    clone_dotfiles "$dotfiles_dir"
  fi
}

main
