source <(antibody init)

if [ -z $DOTFILES_DIR ]; then
	export DOTFILES_DIR=$HOME/dotfiles
fi

antibody bundle < $DOTFILES_DIR/plugins.txt

export EDITOR=vim

# Programming languages, usually version managers
source $DOTFILES_DIR/languages/ruby.zsh
source $DOTFILES_DIR/languages/node.zsh

# SDKs
source $DOTFILES_DIR/sdks/google-cloud-sdk.zsh

# Alias
source $DOTFILES_DIR/aliases/common.zsh
