# backup_me

[FR]

Ce script simple vous permet de faire un backup de n'importe qu'elle dossier présent sur votre système Linux.
Tout est en variable et donc interchangeable selon votre configuration

This simple script allows you to make a backup of any folder present on your system 

Pensez à faire un chmod +x backup.sh avant de lancer
Puis lancer simplement en faisant un ./backup

-----------------------------------------------------------------------------------------------------------------------
[EN]

This simple script allows you to make a backup of any folder present on your system

Everything is variable and therefore interchangeable according to your configuration

Remember to make a chmod + x backup.sh before launching

Then simply launch by doing a ./backup.sh

------------------------------------------------------------------------------------------------------------------------
# Change this
datu=`LC_TIME="fr_FR.UTF-8" date '+%A-%d-%B-%Y-%Hh'`

DIRECTORY_PATH="/home/"

DIRECTORY_SAVE="/home/ce/que/vous/voulez/save/"

NAME_REPERTORY="${DIRECTORY_PATH}Save"

NAME_SAVE="Resources_save_$datu"



# Change info SQL
host=localhost

user=votre_user

password=votre_password

database=votre_base

name=le_nom_de_votre_dump$datu
