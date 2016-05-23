[[ -s ~/.bashrc ]] && source ~/.bashrc

export PATH=/Users/Rohan/Library/Haskell/bin:$PATH:/Users/Rohan/Documents/CS345H/bin:/Applications/Eclipse.app/Contents/Eclipse/
export ECLIPSE_HOME=/Applications/Eclipse.app/Contents/Eclipse/

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/Rohan/.gvm/bin/gvm-init.sh" ]] && source "/Users/Rohan/.gvm/bin/gvm-init.sh"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
