set -gx PYENV_ROOT $HOME/.pyenv
set -gx PATH "$PYENV_ROOT/bin" $PATH
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
