#!bin/bash
echo "Saisir la date de restauration : (format annee-mois-journee)"
read file

if [ ! -d ~/tp1_solution_cloud/sauvegarde-web/$file ]; then
echo "sauvegarde inexistante"
else
rsync -a -e ssh ~/tp1_solution_cloud/sauvegarde-web/$file/ 192.168.33.200:/var/www/html/nextcloud/ 
echo "sauvegarde resteree"
fi
