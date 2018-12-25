#!/usr/bin/env zsh

if [ -z $PUB_CACHE_DIR ]; then
  export PUB_CACHE_DIR=$HOME/.pub-cache
fi

if [ -d $PUB_CACHE_DIR/bin ]; then
  export PATH=$PATH:$PUB_CACHE_DIR/bin
fi
