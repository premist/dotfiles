#!/usr/bin/env zsh

if [ -z $NVM_DIR ]; then
	export NVM_DIR=$HOME/.nvm
fi

if [ -s "$NVM_DIR/nvm.sh" ]; then
	source "$NVM_DIR/nvm.sh"
fi
