#/bin/bash -eu

docker network create mysql-network

docker run --rm -it --name mysql-server \
  --network mysql-network \
  -p 3306:3306 \
  -e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
  mysql:8.0
  #-e MYSQL_ROOT_PASSWORD=root \
  #-e MYSQL_USER=admin \
  #-e MYSQL_PASSWORD=admin \
  #-v ./tmp:/var/lib/mysql \
