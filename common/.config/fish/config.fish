not set -q VISUAL
and set -x VISUAL vim

set -x EDITOR $VISUAL

set -x TZ US/Arizona

starship init fish | source
