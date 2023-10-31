function jenv_setup
    if not test "$JENV_LOADED" = "1"
        jenv init - | source
        jenv enable-plugin export 
    end
end
