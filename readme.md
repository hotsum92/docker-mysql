
[hub.docker/mysql](https://hub.docker.com/_/mysql)

## cp conf.d

```
docker cp mysql-server:/etc/my.cnf my.cnf
```

## connect bash

```
docker exec -it mysql-server bash
```

## connect mysql

```
mysql -u root -h 127.0.0.1 -P 43306
```

## csv export

```
SHOW VARIABLES LIKE "secure_file_priv";
```

```
docker exec -it mysql-server bash
```

```
mysqldump \
--fields-terminated-by=, \
--tab=/usr/src \
sample
```
