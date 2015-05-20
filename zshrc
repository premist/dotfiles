source $HOME/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES

ruby
node
npm
bundler
brew

supercrabtree/k
zsh-users/zsh-syntax-highlighting
zsh-users/zsh-completions src

sindresorhus/pure

EOBUNDLES

antigen apply

# common aliases
alias dev="cd $HOME/Development"
alias shakr="cd $HOME/Development/shakr"
alias st="open -a SourceTree.app"

# hub -> git
eval "$(hub alias -s)"

# Default editor to Atom
export EDITOR="/user/local/bin/atom -w"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# User binaries
export PATH="$HOME/bin:$PATH"

# nvm
export NVM_DIR="/Users/premist/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Google Cloud SDK
source '/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# GVM
source /Users/premist/.gvm/scripts/gvm

# Travis CI
[ -f /Users/premist/.travis/travis.sh ] && source /Users/premist/.travis/travis.sh
