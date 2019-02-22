#!/bin/bash

DATE=`date +%Y-%m-%d`
mkdir -p saveBdd/$DATE

mysqldump -P 3306 -u root -proot nextcloud | gzip > nextcloud.sql.gz
scp -r saveBdd/$DATE root@192.168.33.201:~/tp1_solution_cloud/sauvegarde-bdd/completes/

rsync /var/log/mysql/mysql-bin.000002 root@192.168.33.201:~/tp1_solution_cloud/sauvegarde-bdd/incre/$DATE/
