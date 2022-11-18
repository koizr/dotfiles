export LANG="ja_JP.UTF-8"
export EDITOR="nvim"

# base
BASE_PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
export PATH=$BASE_PATH


### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

# zsh plugins
zinit ice wait'!0'; zinit load zsh-users/zsh-syntax-highlighting
zinit ice wait'!0'; zinit load zsh-users/zsh-completions

# prompt https://github.com/sindresorhus/pure
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# alias
alias ll='ls -laG'
alias t='tree -L $1'
alias brew="PATH=$BASE_PATH brew"
alias vi='/usr/bin/vim'
alias vim='nvim'
alias cot='open -a CotEditor'
alias vsc='open -a "Visual Studio Code"'
alias gl='cd $(ghq root)/$(ghq list | fzf)'
alias pokemon='curl -s -L "https://raw.githubusercontent.com/shinya/pokemon-terminal-art/main/hello.sh" | bash'

# common
export XDG_CONFIG_HOME="$HOME/.config"

# fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# python
## pipenv
export PIPENV_VENV_IN_PROJECT=1
eval "$(pipenv --completion)"
## pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
## Poetry
export PATH="$HOME/.poetry/bin:$PATH"

# node.js
export PATH="~/.nodenv/shims:$PATH"
eval "$(nodenv init -)"

# Java
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Haskell
# stack のいろいろがここにインストールされるらしい
export PATH="$HOME/.local/bin:$PATH"
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
eval "$(stack --bash-completion-script stack)"

# Go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# GitHub
eval "$(gh completion -s zsh)"

