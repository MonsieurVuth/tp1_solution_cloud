# tp1_solution_cloud
Pré requis
La machine nextcloud et backup doivent pouvoir communiquer entre elles avec le protocole ssh
pour cela on execute la commande ssh keygen pour partager les clés entre les deux machines 

#Backup 
Pour lancer les back up, il suffira de lancer la commande ./script-save.sh pour sauvegarder les fichier nextcloud
Pour sauvegarder la bdd, il faudra executer ./nextcloud-connect.sh, ce script va se connecter au serveur contenant nextcloud puis executer le fichier mysqlSaveBdd.sh
Cela va ziper en .sql la bdd sur le serveur nextcloud puis on va le récupérer avec scp sur notre serveur backup

#Restauration de données
Pour restaurer les données des fichiers nextcloud, on va executer la commande ./restau-file.sh, 
on saisira le nom du fichier qu'on désire restaurer et cela restaurera sur le serveur nextcloud

#Purge
Pour purger les dossier de sauvegarde de nextcloud il suffira de faire ./purgeScript.sh
