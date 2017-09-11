#!/usr/bin/env zsh

if [ -z $PYENV_ROOT ]; then
  export PYENV_ROOT=/usr/local/var/pyenv
fi

if which pyenv > /dev/null; then
  eval "$(pyenv init -)";
fi

if [ -d $HOME/.local/bin ]; then
  export PATH=$HOME/.local/bin:$PATH
fi
