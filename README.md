# backup_me

Ce script simple vous permet de faire un backup de n'importe qu'elle dossier présent sur votre système Linux.
Tout est en variable et donc interchangeable selon votre configuration.

Voici comme adapter le script à votre environnement :

Pensez à faire un chmod +x backup.sh avant de lancer
Puis lancer simplement en faisant un ./backup


# datu=`LC_TIME="fr_FR.UTF-8" date '+%A-%d-%B-%Y-%Hh'`
-> Format de date : Le lundi-04-mai-2020-23h
# DIRECTORY_PATH="/home/"
-> Indique ou nous voulons crée le dossier qui va accueillir notre backup
# DIRECTORY_SAVE="/home/ce/que/vous/voulez/save/"
-> Le dossier que vous voulez backup 
# NAME_REPERTORY="${DIRECTORY_PATH}Save"
-> Le nom de votre dossier qui va acceuillir le backup, ici par exemple "Save"
# NAME_SAVE="Resources_save_$datu"
-> Le nom de votre sauvegarde qui prend en paramètre la variable $datu


# Dump du SQL

host=localhost

user=votre_user

password=votre_password

database=votre_base

name=le_nom_de_votre_dump$datu
