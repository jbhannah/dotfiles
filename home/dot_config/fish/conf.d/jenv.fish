if status is-interactive
    if command -sq jenv
        set PATH $HOME/.jenv/bin $PATH
        jenv init - | source
    end
end
