if type -q fnm
    function __fnm
        fnm env --multi --use-on-cd | source
    end
end
