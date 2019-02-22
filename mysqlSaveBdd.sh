#!/bin/bash

DATE=`date +%Y-%m-%d`
mkdir -p saveBdd/$DATE
cd saveBdd/$DATE

mysqldump -P 3306 -u root -proot nextcloud | gzip > nextcloud.sql.gz
scp -r -p ../$DATE root@192.168.33.201:/sauvegarde-bdd/completes/

rsync /var/log/mysql/mysql-bin.000002 root@192.168.33.201:/sauvegarde-bdd/incre/$DATE/
