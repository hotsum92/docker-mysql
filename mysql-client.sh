#/bin/bash -eu

docker run --rm -it --name mysql-client \
  --network mysql-network \
  mysql:5.7 \
  mysql -hmysql-server -uroot
