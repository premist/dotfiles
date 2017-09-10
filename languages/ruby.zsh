#!/usr/bin/env zsh

if [ -z $CHRUBY_DIR ]; then
	export CHRUBY_DIR=/usr/local/share/chruby
fi

if [ -s $CHRUBY_DIR/chruby.sh ]; then
  source $CHRUBY_DIR/chruby.sh
fi

if [ -s $CHRUBY_DIR/auto.sh ]; then
  source $CHRUBY_DIR/auto.sh
fi
