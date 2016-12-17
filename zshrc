if [ -z $DOTFILES_DIR ]; then
	export DOTFILES_DIR=$HOME/dotfiles
fi

export PURE_GUT_PULL=0

# User binaries
export PATH="$HOME/bin:$PATH"

# Antibody
source <(antibody init)
antibody bundle < $DOTFILES_DIR/plugins.txt

# Default editor configuration
export EDITOR=vim

# Programming languages, usually version managers
source $DOTFILES_DIR/languages/ruby.zsh
source $DOTFILES_DIR/languages/node.zsh

# SDKs
source $DOTFILES_DIR/sdks/google-cloud-sdk.zsh

# Alias
source $DOTFILES_DIR/aliases/common.zsh
