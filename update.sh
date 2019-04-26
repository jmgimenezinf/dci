#!/bin/bash
CMD="$(git pull)"
HUGO="hugo"

if [ "$CMD" = "Already up-to-date." ]
then
	echo "actualizado"

else 
	echo "haciendo merge"
	hugo
	cd /var/www/html/sitios/dci
	rm -rf *
	mv /home/martin/sitios/dci/public /var/www/html/sitios/dci
	rm -rf /home/martin/sitios/dci/public
fi

exit 0
