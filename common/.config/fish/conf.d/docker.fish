if type -q docker
    # ps (ps)
    abbr -a -g dps docker ps -a
    abbr -a -g dpsl docker ps -lq

    # system prune (sP)
    abbr -a -g dsP docker system prune --all
    abbr -a -g dsPV docker system prune --all --volumes

    # docker-compose (dc)
    abbr -a -g dcd docker-compose down
    abbr -a -g dcda docker-compose down --remove-orphans --volumes --rmi all
    abbr -a -g dco docker-compose
    abbr -a -g dcr docker-compose run --rm
    abbr -a -g dcu docker-compose up
end
