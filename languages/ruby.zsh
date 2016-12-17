#!/usr/bin/env zsh

if [ -z $CHRUBY_DIR ]; then
	export CHRUBY_DIR=/usr/local/share/chruby
fi

source $CHRUBY_DIR/chruby.sh
source $CHRUBY_DIR/auto.sh
