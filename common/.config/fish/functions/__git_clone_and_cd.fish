function __git_clone_and_cd
    set -l url $argv[2]
    set -l repopath $GOPATH/src/(echo $url | gsed -nr 's/^((https?|ssh):\/\/)?(.+@)?([A-Za-z0-9_\.-]+)(:[0-9]+)?[:\/](.*)\.git$/\4\/\6/gp')
    eval $argv[1] $url $repopath
    cd $repopath
end
