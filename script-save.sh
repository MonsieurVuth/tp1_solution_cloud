#/bin/bash
DATE=`date +%Y-%m-%d`
#ORIGIN=root@192.168.33.200:/var/www/html/nextcloud

 mkdir -p sauvegarde-web

rsync --backup --backup-dir=$DATE -a root@192.168.33.200:/var/www/html/nextcloud/ sauvegarde-web/

