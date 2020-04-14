export LANG="ja_JP.UTF-8"
export EDITOR="nvim"

# base
BASE_PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
export PATH=$BASE_PATH

# bash
## 寒色系
export PS1="\[\033[38;5;45m\][\A]\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;39m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;33m\]\\$\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[\033[38;5;33m\]>\[$(tput sgr0)\]\[\033[38;5;39m\]>\[$(tput sgr0)\]\[\033[38;5;51m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]"
## 暖色系
#export PS1="\[\033[38;5;220m\][\A]\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;208m\]\w \[$(tput sgr0)\]\[\033[38;5;9m\]\\$\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[\033[38;5;220m\]>\[$(tput sgr0)\]\[\033[38;5;208m\]>\[$(tput sgr0)\]\[\033[38;5;202m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]"

bind '"\C-f": forward-word'
bind '"\C-b": backward-word'

# alias
alias ll='ls -laG'
alias t='tree -L $1'
alias brew="PATH=$BASE_PATH brew"
alias vi='/usr/bin/vim'
alias vim='nvim'
alias cot='open -a CotEditor'
alias vsc='open -a "Visual Studio Code"'
alias gl='cd $(ghq root)/$(ghq list | fzf)'

# fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# python
## pipenv
export PIPENV_VENV_IN_PROJECT=1
eval "$(pipenv --completion)"
## pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# haskell
export PATH="$PATH:~/.local/bin"
export PATH="$(stack path --compiler-bin):$PATH"
eval "$(stack --bash-completion-script stack)"

# completion
[ -f $(brew --prefix)/etc/bash_completion ] && . $(brew --prefix)/etc/bash_completion

# neovim
export XDG_CONFIG_HOME='~/.vim'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/koizumi/.sdkman"
[[ -s "/Users/koizumi/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/koizumi/.sdkman/bin/sdkman-init.sh"
