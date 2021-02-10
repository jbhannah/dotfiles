if type -q fnm
    function __fnm
        fnm env --use-on-cd | source
    end
end
