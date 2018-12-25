#!/usr/bin/env zsh

if [ -z $FLUTTER_DIR ]; then
  export FLUTTER_DIR=$HOME/bin/flutter
fi

if [ -s "$FLUTTER_DIR/bin/flutter" ]; then
  export PATH=$FLUTTER_DIR/bin:$PATH
fi
