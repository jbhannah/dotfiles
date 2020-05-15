if type -q starship
    function __starship
        starship init fish | source
    end
end
