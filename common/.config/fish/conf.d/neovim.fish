if status is-interactive; and type -q nvim
    not set -q VISUAL
    and set -gx VISUAL nvim

    set -gx NVIM_TUI_ENABLE_TRUE_COLOR 1
end
