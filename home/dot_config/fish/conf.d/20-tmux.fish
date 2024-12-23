status is-interactive
and not set -q VSCODE_CWD
and not string match -q "$TERM_PROGRAM" vscode
and not string match -q "$TERM_PROGRAM" zed
and not string match -q "$TERM_PROGRAM" WarpTerminal
and not set -q TMUX
and exec tmux new-session -As0
