if status is-interactive; and command -sq chezmoi
    abbr -a -g cm chezmoi
    abbr -a -g cma chezmoi add
    abbr -a -g cmaa chezmoi re-add
    abbr -a -g cmA chezmoi apply
    abbr -a -g cmAA chezmoi apply --refresh-externals
    abbr -a -g cmc chezmoi cd
    abbr -a -g cmC chezmoi edit-config
    abbr -a -g cmd chezmoi diff
    abbr -a -g cmD chezmoi decrypt
    abbr -a -g cme chezmoi edit
    abbr -a -g cmE chezmoi encrypt
    abbr -a -g cmg chezmoi git
    abbr -a -g cmm chezmoi merge
    abbr -a -g cmM chezmoi merge-all
    abbr -a -g cms chezmoi status
    abbr -a -g cmS chezmoi secret
    abbr -a -g cmt chezmoi execute-template
    abbr -a -g cmU chezmoi update
    abbr -a -g cmx chezmoi forget
    abbr -a -g cmX chezmoi remove
end
