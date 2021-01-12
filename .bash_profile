[[ -s ~/.bashrc ]] && source ~/.bashrc

export PATH=/usr/local/sbin:$PATH:/Users/rohanramchand/src/arcanist/bin

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
export PATH="/usr/local/opt/protobuf@3.1/bin:$PATH"

complete -W "\`grep -oE '^[a-zA-Z0-9_.-]+:([^=]|$)' Makefile | sed 's/[^a-zA-Z0-9_.-]*$//'\`" make
eval "$(pyenv init -)"


export PATH="$HOME/.cargo/bin:$PATH"
