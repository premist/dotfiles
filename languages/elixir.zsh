#!/usr/bin/env zsh

if [ -z $KIEX_DIR ]; then
  export KIEX_DIR=$HOME/.kiex
fi

if [ -s $KIEX_DIR/scripts/kiex ]; then
  source $KIEX_DIR/scripts/kiex
fi
