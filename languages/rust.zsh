#!/usr/bin/env zsh

export CARGO_DIR=$HOME/.cargo

if [ -s $CARGO_DIR/env ]; then
  source $CARGO_DIR/env
fi
