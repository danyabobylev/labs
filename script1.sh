#!/bin/bash

# Проверка наличия репозитория Backports
if ! grep -q "deb http://ftp.debian.org/debian stretch-backports main" /etc/apt/sources.list; then
    echo "deb http://ftp.debian.org/debian stretch-backports main" >> /etc/apt/sources.list
fi

# Обновление пакетного менеджера
sudo apt update && sudo apt upgrade -y

# Установка Apache2
sudo apt install -y apache2

# Установка Python
sudo apt install -y python3

# Установка SSH-сервера
sudo apt-get install ssh

# Установка Git
sudo apt install -y git

# Установка Nginx
sudo apt install -y nginx

# Установка FTP
sudo apt install vsftpd

# Установка RDP
sudo apt install xrdp

# Установка Cron
sudo apt install cron

echo "Система настроена под вас!"
