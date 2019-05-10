#!/usr/bin/env bash
HOME=/root
LOGNAME=root
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
LANG=en_US.UTF-8
SHELL=/bin/sh
PWD=/root

cd /home/martin/sitios/dci
git checkout contenido
CMD="$(git pull)"
HUGO="hugo"

if [ "$CMD" = "Already up-to-date." ]
then
	echo "actualizado"

else 
	echo "haciendo merge" 
	rm -rf /home/martin/sitios/dci/public
	cd /home/martin/sitios/dci | hugo
	rm -rf /var/www/html/sitios/dci
	mkdir /var/www/html/sitios/dci
	mv /home/martin/sitios/dci/public/* /var/www/html/dci
fi

exit 0
