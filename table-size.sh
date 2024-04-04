#/bin/bash -eu

docker exec mysql-server sh -c "exec mysql -uroot $1 -e 'select table_name, table_rows, data_length, index_length, data_length + index_length from information_schema.tables where table_schema = database() order by (data_length + index_length) desc'"
