#/bin/bash -eu

docker exec mysql-server sh -c 'exec mysqldump --all-databases -uroot' > backup.sql
