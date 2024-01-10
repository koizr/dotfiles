export LANG="ja_JP.UTF-8"
export EDITOR="nvim"
export XDG_CONFIG_HOME="$HOME/.config"

# aliases
alias ll='ls -laG'
alias gl='cd $(ghq root)/$(ghq list | fzf)'
alias vi='vim'
alias vim='nvim'

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# zsh
### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# zsh plugins
zinit ice wait'!0'; zinit load zsh-users/zsh-syntax-highlighting
zinit ice wait'!0'; zinit load zsh-users/zsh-completions
zinit ice wait'!0'; zinit load zsh-users/zsh-autosuggestions

# prompt
eval "$(starship init zsh)"

# fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
[ -f "$HOME/.fzf.zsh" ] && source "$HOME/.fzf.zsh"

# GitHub
if type gh &>/dev/null; then
    eval "$(gh completion -s zsh)"
fi

# mise
if type mise &>/dev/null; then
    eval "$(mise activate zsh)"
fi

# Rust
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"
