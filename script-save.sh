#/bin/bash
DATE=`date +%Y-%m-%d`

 mkdir -p sauvegarde-web

rsync --backup --backup-dir=$DATE -a root@192.168.33.200:/var/www/html/nextcloud/ sauvegarde-web/

