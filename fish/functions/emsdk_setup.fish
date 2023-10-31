function emsdk_setup
    set --local emsdk_home $HOME/workspace/setup/sdk/emsdk
    EMSDK_QUIET=1 source $emsdk_home/emsdk_env.fish
end
