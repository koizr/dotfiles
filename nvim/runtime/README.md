# Neovim Runtime

Neovim （とプラグイン）がグローバルに使われている Python に依存してしまうとアップデートするたびに何かしらのメンテが必要になってしまって大変面倒なので、 Neovim 専用の実行環境を用意しておく。

## 事前準備

[Introduction \| Documentation \| Poetry \- Python dependency management and packaging made easy\.](https://python-poetry.org/docs/#installation)

プロジェクト内に環境が生成されるようにしておかないといけない。

```sh
poetry config virtualenvs.in-project true
```

## インストール

```sh
poetry install
```
