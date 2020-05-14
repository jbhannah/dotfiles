not set -q VISUAL
and set -x VISUAL vim

set -x EDITOR $VISUAL

starship init fish | source
