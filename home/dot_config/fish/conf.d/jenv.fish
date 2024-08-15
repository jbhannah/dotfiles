if status is-interactive
    if command -sq jenv
        jenv init - fish | source
    end
end
