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

# Outputs the name of the current branch
# Usage example: git pull origin $(git_current_branch)
# Using '--quiet' with 'symbolic-ref' will not cause a fatal error (128) if
# it's not a symbolic ref, but in a Git repo.
function git_current_branch() {
  local ref
  ref=$(command git symbolic-ref --quiet HEAD 2> /dev/null)
  local ret=$?
  if [[ $ret != 0 ]]; then
    [[ $ret == 128 ]] && return  # no git repo.
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
  fi
  echo ${ref#refs/heads/}
}

alias gpsup='git push --set-upstream origin $(git_current_branch)'
