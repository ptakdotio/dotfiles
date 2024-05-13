# Zsh configuration

# Custom path directories
PATH+=":$HOME/.local/bin"

# Keep history
setopt appendhistory
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

# Aliases
alias ls='ls --color=auto'
alias open='xdg-open'

# Source Antidote
if [ -d ~/.antidote ]
then
  source ~/.antidote/antidote.zsh
  antidote load
fi

