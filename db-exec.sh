#/bin/bash -eu

docker exec mysql-server sh -c "exec mysql -uroot $1 -e \"$2\""
