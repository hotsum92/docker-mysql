#/bin/bash -eu

docker exec mysql-server sh -c "exec mysqldump -uroot $@"
