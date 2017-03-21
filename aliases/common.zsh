#!/usr/bin/env zsh

# Directories
alias dev="cd $HOME/Development"
alias shakr="cd $HOME/Development/shakr"

# Heroku
alias h="heroku"

# Hub -> Git
if [ -f "$(which hub)" ]; then
  eval "$(hub alias -s)"
fi

# Git related alias
alias gpsup='git push --set-upstream origin $(git_current_branch)'
