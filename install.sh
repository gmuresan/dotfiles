#!/bin/bash
# Install dotfiles via GNU Stow
# Usage: git clone <repo> ~/dotfiles && cd ~/dotfiles && ./install.sh

set -e

if ! command -v stow &>/dev/null; then
  echo "Installing GNU Stow..."
  brew install stow
fi

cd "$(dirname "$0")"
PACKAGES=(zsh vim nvim ghostty shell git)

for pkg in "${PACKAGES[@]}"; do
  echo "Stowing $pkg..."
  stow -t ~ "$pkg"
done

echo "✅ All dotfiles linked!"
