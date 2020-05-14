if type -q docker
    alias drpwd "docker run --rm -it -v (pwd):(pwd) -w (pwd)"
    # end
end
