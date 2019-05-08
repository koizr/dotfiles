export LANG="ja_JP.UTF-8"

# base
BASE_PATH="/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=$BASE_PATH

# bash
export PS1='\[\e[0;35m\][\u:\W]\$ \[\e[m\]'
bind '"\C-f": forward-word'
bind '"\C-b": backward-word'

# alias
alias ll='ls -laG'
alias t='tree'
alias brew="PATH=$BASE_PATH brew"
alias vi='/usr/bin/vim'
alias vim='nvim'
alias ta='tmux a -t'
alias cot='open -a CotEditor'

# fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
# ruby
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# python
PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# node.js
export PATH="$PATH:./node_modules/.bin"

# completion
[ -f $(brew --prefix)/etc/bash_completion ] && . $(brew --prefix)/etc/bash_completion

# neovim
export XDG_CONFIG_HOME='~/.vim'

