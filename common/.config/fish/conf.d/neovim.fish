if type -q nvim
    not set -q VISUAL
    and set -x VISUAL nvim

    set -x NVIM_TUI_ENABLE_TRUE_COLOR 1
end
