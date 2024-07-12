#/bin/bash -eu

docker network create mysql-network

docker run --rm -it --name mysql-server \
  --network mysql-network \
  -p 43306:3306 \
  -e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
  -v ./my.cnf:/etc/mysql/my.cnf \
  -v ./:/usr/src/ \
  mysql:8.0 --secure-file-priv=''
  #-e MYSQL_ROOT_PASSWORD=root \
  #-e MYSQL_USER=admin \
  #-e MYSQL_PASSWORD=admin \
  #-v ./tmp:/var/lib/mysql \
