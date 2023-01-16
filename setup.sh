#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install \
    wget \
    gnupg pinentry-mac \
    fzf \
    tmux tmuxinator \
    git tig ghq gh \
    neovim \
    tree

brew tap genkiroid/homebrew-cert && brew install cert

brew install --cask \
    1password \
    google-japanese-ime \
    clipy \
    alfred \
    karabiner-elements \
    keepingyouawake \
    iterm2 \
    docker \
    visual-studio-code \
    jetbrains-toolbox \
    google-chrome firefox
