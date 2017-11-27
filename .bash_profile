# bash
export PS1='\[\e[0;35m\][\u@\h \w]\$ \[\e[m\]'

# alias
alias ll='ls -la'
alias t='tree'
alias tsc-es5='tsc --target es5 --module amd'
alias clear-open-app='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user'

# ruby
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# python
PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# node.js
export PATH=$PATH:./node_modules/.bin
