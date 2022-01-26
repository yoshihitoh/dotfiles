#!/usr/bin/env fish

function link_configs
    # conf.d/
    mkdir -p $HOME/.config/fish/conf.d
    for f in (find ./conf.d -iname '*.fish')
        set --local target (realpath $f)
        set --local link $HOME/.config/fish/conf.d/(basename $f)
        echo "* make a config link: $link"
        ln -sf $target $link
    end
end

function link_functions
    mkdir -p $HOME/.config/fish/functions
    for f in (find ./functions -iname '*.fish')
        set --local target (realpath $f) 
        set --local link $HOME/.config/fish/functions/(basename $f)
        echo "* make a function link: $link"
        ln -sf $target $link
    end
end

function main
    link_configs
    link_functions
end

main
