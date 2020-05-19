if type -q fasd; and type -q fzf
    function z
        set -l dir (fasd -dlR | fzf --no-sort)
        and test -d $dir
        and cd $dir
    end
end
