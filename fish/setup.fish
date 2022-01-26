#!/usr/bin/env fish

function clean
    rm -rf $HOME/.config/fish
    mkdir -p $HOME/.config/fish
end

function link_config
    # config
    ln -sf $PWD/config.fish $HOME/.config/fish/config.fish
end

function install_plugins
    # install fisherman
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

    # `fish_plugins` will be created by installing fisher.
    # so, need to remove the file before creating a symlink.
    rm -f $HOME/.config/fish/fish_plugins
    ln -sf $PWD/fish_plugins $HOME/.config/fish/fish_plugins

    # install plugins
    fisher update
end

function main
    clean
    link_config

    # update (conf.d/functions)
    fish $PWD/update.fish

    install_plugins
end

main
