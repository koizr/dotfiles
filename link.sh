#!/bin/bash

set -eu

# このファイルが実行されているディレクトリ
BASE_DIR=$(cd $(dirname $0); pwd)

cd $BASE_DIR

echo "start link..."
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".DS_Store" ] && continue

    ln -snfv "${BASE_DIR%/}/${f}" ~/
done

# Neovim
ln -snfv "$BASE_DIR"/nvim "$XDG_CONFIG_HOME"/nvim

# git
ln -snfv "$BASE_DIR"/git "$XDG_CONFIG_HOME"/git

echo "completed!"
