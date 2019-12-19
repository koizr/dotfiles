#!/bin/bash

# 未定義の変数を参照してもエラー表示しない
set -u

# このファイルが実行されているディレクトリ
BASE_DIR=$(cd $(dirname $0); pwd)

cd $BASE_DIR

echo "start setup..."
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".DS_Store" ] && continue

    ln -snfv "$BASE_DIR"/"$f" ~/
done

# VS Code
VSCODE_DIR="$HOME/Library/Application Support/Code/User/"
ln -snfv "$BASE_DIR"/vscode/settings.json "$VSCODE_DIR"
ln -snfv "$BASE_DIR"/vscode/keybindings.json "$VSCODE_DIR"
ln -snfv "$BASE_DIR"/vscode/snippets "$VSCODE_DIR"snippets
