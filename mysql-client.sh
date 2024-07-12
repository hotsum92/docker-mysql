#/bin/bash -eu

docker run --rm -it --name mysql-client \
  --network mysql-network \
  mysql:8.0
  mysql -hmysql-server -uroot
