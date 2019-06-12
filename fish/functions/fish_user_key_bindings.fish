function fish_user_key_bindings
    # vi-mode
    for mode in insert default visual
        fish_default_key_bindings -M $mode
    end
    fish_vi_key_bindings --no-erase

    # fzf
    fzf_key_bindings
end
