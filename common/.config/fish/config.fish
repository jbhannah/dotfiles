not set -q VISUAL
and set -x VISUAL vim

set -x EDITOR $VISUAL

set -x TZ US/Arizona

abbr -a -g l ls -algh

starship init fish | source
