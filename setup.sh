#!/bin/bash

set -eu

# Homebrew
# https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install \
    wget \
    gnupg pinentry-mac \
    fzf \
    tmux tmuxinator \
    git gitui tig ghq gh \
    neovim \
    tree

brew tap genkiroid/homebrew-cert && brew install cert

brew install --cask \
    1password \
    google-japanese-ime \
    clipy \
    raycast \
    karabiner-elements \
    keepingyouawake \
    iterm2 \
    docker \
    visual-studio-code \
    jetbrains-toolbox \
    google-chrome firefox

# zsh
# https://github.com/zdharma-continuum/zinit#automatic
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Vim
# https://github.com/tani/vim-jetpack#installation
curl -fLo ~/.local/share/nvim/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim
