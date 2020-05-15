if type -q pyenv
    function __pyenv
        not set -q PYENV_ROOT
        and set -Ux PYENV_ROOT $HOME/.pyenv

        pyenv init - | source
    end
end
