# alias
#------------------------------------------------------------------------------
alias ldd='otool -L'

# theme
#------------------------------------------------------------------------------
#set -g fish_theme agnoster
set -g fish_theme bobthefish
# set -g theme_color_scheme solarized-light

# fish-plugins
#------------------------------------------------------------------------------
set fish_plugins theme git rbenv rails brew bundler gem osx pbcopy z tmux

# fzf
#------------------------------------------------------------------------------
set -x FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/*"'
set -x FZF_LEGACY_KEYBINDINGS 0
set -x FXF_FIND_FILE_COMMAND $FZF_DEFAULT_COMMAND

# direnv
#------------------------------------------------------------------------------
eval (direnv hook fish)

# Android
#------------------------------------------------------------------------------
set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x PATH $ANDROID_HOME/platform-tools $PATH
set -x ADB_SS_DIR $HOME/files/adb/ss

function adb_ss
 adb shell screencap /sdcard/screen.png
 adb pull /sdcard/screen.png $ADB_SS_DIR/adb-ss_(date "+%Y-%m-%d at %H.%M.%S").png
end

# golang
set -x GOPATH $HOME/go
set -x GOROOT $GOPATH/gobin/go1.9/go
set -x PATH $GOROOT/bin $GOPATH/bin $PATH

# rust
#------------------------------------------------------------------------------
set -x PATH $HOME/bin $HOME/.cargo/bin $PATH
set -x RUST_SRC_PATH $HOME/workspace/tools/lang/rust/rustc-1.21.0-src/src

# python
#------------------------------------------------------------------------------
set -x PATH $HOME/.pyenv/shims $PATH

# rbenv
#------------------------------------------------------------------------------
rbenv init - | source

# pyenv
#------------------------------------------------------------------------------
. (pyenv init - | psub)

# android sdk
#------------------------------------------------------------------------------
set ANDROID_SDK $HOME/Library/Android/sdk
set -x PATH $ANDROID_SDK/tools $ANDROID_SDK/platform-tools $PATH

# emsdk
#------------------------------------------------------------------------------
set -x EMSDK_VERSION 1.37.16
set -x EMSDK $HOME/workspace/tools/emscripten/emsdk-portable
set -x EMSCRIPTEN = $EMSDK/emscripten/$EMSDK_VERSION
set -x PATH $EMSCRIPTEN $PATH
set -x EM_CONFIG $HOME/.emscripten
set -x BINARYEN_ROOT = $EMSDK/clang/e$EMSDK_VERSION_64bit/binaryen

# clang/nodejsはEM_CONFIGに設定済み
# emsdk_env.sh だと両者をPATHに追加しているが、
# PATHに設定すると通常のclang/nodejsと干渉するので除外する
# set -x PATH $EMSDK/clang/e1.37.16_64bit $PATH
# set -x PATH $EMSDK/node/4.1.1_64bit/bin $PATH
set -g fish_user_paths "/usr/local/opt/sphinx-doc/bin" $fish_user_paths
