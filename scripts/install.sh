#!/usr/bin/env bash
set -e

OS="$(uname)"

echo "▶ Installation dotfiles pour $OS"

# Dépendances communes
sudo apt update
sudo apt install -y \
  git \
  neovim \
  tmux \
  ripgrep \
  fd-find \
  curl

# NvChad
if [ ! -d "$HOME/.config/nvim" ]; then
  git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
fi

# Custom NvChad
mkdir -p ~/.config/nvim/lua
cp -r nvim/custom ~/.config/nvim/lua/

# tmux
mkdir -p ~/.config/tmux
ln -sf "$(pwd)/tmux/tmux.conf" ~/.tmux.conf

echo "✔ Installation terminée"


