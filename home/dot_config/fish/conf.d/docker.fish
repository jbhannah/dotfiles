if status is-interactive; and command -sq docker-compose
    abbr -a -g dco docker-compose
    abbr -a -g dcb docker-compose build
    abbr -a -g dcu docker-compose up
    abbr -a -g dcs docker-compose start
    abbr -a -g dcS docker-compose stop
    abbr -a -g dcX docker-compose down
    abbr -a -g dcXX docker-compose down --remove-orphans --rmi all --volumes
end
