#!/usr/bin/env zsh
alias dev="cd $HOME/Development"
alias shakr="cd $HOME/Development/shakr"

if [ -f "$(which hub)" ]; then
	eval "$(hub alias -s)"
fi
