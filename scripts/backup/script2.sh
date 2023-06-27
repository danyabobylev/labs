#!/bin/bash

# Проверка на существование директории /archive
if [ ! -d /archive ]
then
    sudo mkdir /archive
fi

# Создание архива директорий /home, /var/log и конфигурационных файлов основных утилит удалённого доступа
sudo tar -czvf /archive/backup_$(date '+%Y-%m-%d').tar.gz /home /var/log /etc/ssh /etc/vsftpd /etc/xrdp

# Удаление архивов старше 7 дней
sudo find /archive -name 'backup_*.tar.gz' -mtime +7 -exec rm {} \;

echo "Бэкап создан успешно!"
