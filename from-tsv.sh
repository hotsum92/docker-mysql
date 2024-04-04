#/bin/bash -eu

header=$(head -n 1 $3 | tr '\t' ',')

IFS=$'\n'
for row in $(tail -n +2 $3); do
  # quote values
  row=$(echo $row | sed "s/[^\t]*/'&'/g")
  row=$(echo $row | tr '\t' ',')

  docker exec -i mysql-server sh -c "exec mysql -uroot $1 -e \"INSERT INTO $2 ($header) VALUES ($row);\""
done

