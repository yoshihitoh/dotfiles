# alias
alias ldd='otool -L'
alias vim='nvim'

# theme
# set -g fish_theme agnoster
set -g fish_theme bobthefish

# development environments
source  ~/.cargo/env
nodenv init - | source
rbenv init - | source
pyenv init - | source
direnv hook fish | source
