if status is-interactive
    test -n $fish_greeting
    or set fish_greeting

    set -q fish_key_bindings
    and test $fish_key_bindings = "fish_vi_key_bindings"
    or set -U fish_key_bindings fish_vi_key_bindings

    set -q VISUAL
    or set -x VISUAL vim

    set -x EDITOR $VISUAL

    set -q TZ
    or set -U TZ US/Arizona

    abbr -a -g l ls -algh

    __starship
end
