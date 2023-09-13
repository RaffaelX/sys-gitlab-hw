!#/bin/bash
rsync -a --delete /home/KhakimovRafael/ /tmp/backup >> backup.log

if [ "$?" -eq 0 ]; then
        logger "Успешное резервное копирование"
else    logger "Сбой резервного копирования!"
fi
