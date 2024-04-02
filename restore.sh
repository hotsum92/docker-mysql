#/bin/bash -eu

docker exec -i mysql-server sh -c 'exec mysql -uroot' < "$1"
