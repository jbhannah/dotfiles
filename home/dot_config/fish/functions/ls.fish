if command -sq eza
    function ls --wraps='eza'
        eza --group-directories-first $argv
    end
end
