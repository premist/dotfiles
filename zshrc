if [ -z $DOTFILES_DIR ]; then
  export DOTFILES_DIR=$HOME/dotfiles
fi

export LANG=en_US.UTF-8

export PURE_GUT_PULL=0

export HOMEBREW_NO_ANALYTICS=1

# User binaries
export PATH="$HOME/bin:$PATH"

# Antibody
source <(antibody init)
antibody bundle < $DOTFILES_DIR/plugins.txt

# Default editor configuration
export EDITOR=vim

# Use darker fzf colors
# TODO: Adopt seti color scheme
export FZF_DEFAULT_OPTS="
--color fg:242,bg:233,hl:65,fg+:15,bg+:234,hl+:108
--color info:108,prompt:109,spinner:108,pointer:168,marker:168
"

# Completions
fpath=($DOTFILES_DIR/completions $fpath)

# Programming languages, usually version managers
source $DOTFILES_DIR/languages/ruby.zsh
source $DOTFILES_DIR/languages/node.zsh
source $DOTFILES_DIR/languages/python.zsh
source $DOTFILES_DIR/languages/elixir.zsh
source $DOTFILES_DIR/languages/rust.zsh
source $DOTFILES_DIR/languages/go.zsh
source $DOTFILES_DIR/languages/dart.zsh

# SDKs
source $DOTFILES_DIR/sdks/google-cloud-sdk.zsh
source $DOTFILES_DIR/sdks/flutter.zsh

# Alias
source $DOTFILES_DIR/aliases/common.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
