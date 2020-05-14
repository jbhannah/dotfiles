contains Darwin (uname)
and set -l docker_base /Applications/Docker.app/Contents/Resources
or set -l docker_base /usr/local

set -l docker_completions $docker_base/etc/docker.fish-completion

test -f $docker_completions
and source $docker_completions

set -l docker_compose_completions $docker_base/etc/docker-compose.fish-completion

test -f $docker_compose_completions
and source $docker_compose_completions
