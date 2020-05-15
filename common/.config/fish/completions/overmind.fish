set -l overmind_start_commands start s
set -l overmind_restart_commands restart r
set -l overmind_stop_commands stop interrupt i
set -l overmind_connect_commands connect c
set -l overmind_quit_commands quit q
set -l overmind_kill_commands kill k
set -l overmind_run_commands run exec e
set -l overmind_echo_commands echo
set -l overmind_help_commands help h

set -l overmind_commands $overmind_start_commands $overmind_restart_commands $overmind_stop_commands $overmind_connect_commands $overmind_quit_commands \
    $overmind_kill_commands $overmind_run_commands $overmind_echo_commands $overmind_help_commands

complete -f -c overmind -n "not __fish_seen_subcommand_from $overmind_commands" -a "$overmind_start_commands" -d "Run procfile"
complete -f -c overmind -n "__fish_seen_subcommand_from $overmind_start_commands" -s w -l title -d 'Specify a title of the application [$OVERMIND_TITLE]'
complete -F -c overmind -n "__fish_seen_subcommand_from $overmind_start_commands" -s f -l procfile -d 'Specify a Procfile to load (default: "./Procfile") [$OVERMIND_PROCFILE]'
complete -f -c overmind -n "__fish_seen_subcommand_from $overmind_start_commands" -s l -l processes -d 'Specify process names to launch. Divide names with comma [$OVERMIND_PROCESSES]'
complete -f -c overmind -n "__fish_seen_subcommand_from $overmind_start_commands" -s d -l root -d 'Specify a working directory of application. Default: directory containing the Procfile'

complete -f -c overmind -n "not __fish_seen_subcommand_from $overmind_commands" -a "$overmind_restart_commands" -d "Restart specified processes"
complete -f -c overmind -n "not __fish_seen_subcommand_from $overmind_commands" -a "$overmind_stop_commands" -d "Stop specified processes without quitting Overmind itself"
complete -f -c overmind -n "not __fish_seen_subcommand_from $overmind_commands" -a "$overmind_connect_commands" -d "Connect to the tmux session of the specified process"
complete -f -c overmind -n "not __fish_seen_subcommand_from $overmind_commands" -a "$overmind_quit_commands" -d "Gracefully quits Overmind. Same as sending SIGINT"
complete -f -c overmind -n "not __fish_seen_subcommand_from $overmind_commands" -a "$overmind_kill_commands" -d "Kills all processes"
complete -f -c overmind -n "not __fish_seen_subcommand_from $overmind_commands" -a "$overmind_run_commands" -d "Runs provided command within the Overmind environment"
complete -f -c overmind -n "not __fish_seen_subcommand_from $overmind_commands" -a "$overmind_echo_commands" -d "Echoes output from master Overmind instance"
complete -f -c overmind -n "not __fish_seen_subcommand_from $overmind_commands" -a "$overmind_help_commands" -d "Shows a list of commands or help for one command"
