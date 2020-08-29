#!/usr/bin/env zsh

if [ -z $CHRUBY_DIR ]; then
  # macOS Homebrew
  if [ -d /usr/local/share/chruby ]; then
    export CHRUBY_DIR=/usr/local/share/chruby
  # AUR
  elif [ -d /usr/share/chruby ]; then
    export CHRUBY_DIR=/usr/share/chruby
  fi
fi

if [ -s $CHRUBY_DIR/chruby.sh ]; then
  source $CHRUBY_DIR/chruby.sh
fi

if [ -s $CHRUBY_DIR/auto.sh ]; then
  source $CHRUBY_DIR/auto.sh
fi
