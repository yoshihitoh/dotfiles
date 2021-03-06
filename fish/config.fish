# alias
alias ldd='otool -L'
alias vim='nvim'

# theme
# set -g fish_theme agnoster
set -g fish_theme bobthefish

# development environments
source  ~/.cargo/env
nodenv init - | source
goenv init - | source
pyenv init - | source
rbenv init - | source
direnv hook fish | source

# enable local tools
set -gx PATH $HOME/bin $PATH
