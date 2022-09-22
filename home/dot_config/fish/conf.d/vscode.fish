if string match -q "$TERM_PROGRAM" vscode
    . (code --locate-shell-integration-path fish)
    set -gx EDITOR code -rw
    set -gx VISUAL $EDITOR
end
