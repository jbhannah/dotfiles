set -l op_ssh_sock $HOME/.1password/agent.sock

if test -S $op_ssh_sock
    set -gx SSH_AUTH_SOCK $op_ssh_sock
end
