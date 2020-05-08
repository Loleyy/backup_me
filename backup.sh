#Script de sauvagarde ressource fivem / dump sql 
echo "Mise en route de la sauvegarde des ressources / dump de la base SQL"
sleep 1
echo ""
echo ""
echo ""
echo -e " ______ _______      ________ __  __        ______ _____           _   _  _____ ______\n|  ____|_   _\ \    / |  ____|  \/  |      |  ____|  __ \    /\   | \ | |/ ____|  ____|\n| |__    | |  \ \  / /| |__  | \  / |______| |__  | |__) |  /  \  |  \| | |    | |__\n|  __|   | |   \ \/ / |  __| | |\/| |______|  __| |  _  /  / /\ \ | .   | |    |  __|\n| |     _| |_   \  /  | |____| |  | |      | |    | | \ \ / ____ \| |\  | |____| |____\n|_|    |_____|   \/   |______|_|  |_|      |_|    |_|  \_/_/    \_|_| \_|\_____|______|"
sleep 3

datu=`LC_TIME="fr_FR.UTF-8" date '+%A-%d-%B-%Y-%Hh'`
DIRECTORY_PATH="/home/"
DIRECTORY_SAVE="/home/fivemdev/resources"
NAME_REPERTORY="${DIRECTORY_PATH}Save"
NAME_SAVE="Resources_save_$datu"

host=localhost
user=fivem
password=fivem
database=es_extended
name=dump_extended_$datu

#Création du directory /home/Save_ressource
mkdir -p  "$NAME_REPERTORY"

#tar du dossier /home/fivemdev/resources
tar -czvf $NAME_SAVE.tar.gz $DIRECTORY_SAVE

#mv du dossier resources.tar.gz vers /home/Save_ressource
mv $NAME_SAVE.tar.gz $NAME_REPERTORY
echo ""
echo ""
echo ""
sleep 1
echo "Mise en route du dump de la base de donnée..."
echo ""
echo ""
echo ""

echo -e " ______ _______      ________ __  __        ______ _____           _   _  _____ ______\n|  ____|_   _\ \    / |  ____|  \/  |      |  ____|  __ \    /\   | \ | |/ ____|  ____|\n| |__    | |  \ \  / /| |__  | \  / |______| |__  | |__) |  /  \  |  \| | |    | |__\n|  __|   | |   \ \/ / |  __| | |\/| |______|  __| |  _  /  / /\ \ | .   | |    |  __|\n| |     _| |_   \  /  | |____| |  | |      | |    | | \ \ / ____ \| |\  | |____| |____\n|_|    |_____|   \/   |______|_|  |_|      |_|    |_|  \_/_/    \_|_| \_|\_____|______|"
sleep 3

mysqldump --host=$host --user=$user --password=$password $database > $name.sql;
mv $name.sql $NAME_REPERTORY

echo ""
echo ""
echo ""

echo "Dump Terminer !"
