#!/bin/bash

echo "Entrando a postdeploy hook..."

cd /var/app/current

echo "Instalando dependencias..."
pip3 install -r requirements.txt

echo "Aplicando migraciones..."
python3 manage.py makemigrations --noinput
python3 manage.py migrate --noinput

echo "Levantando Django en modo desarrollo..."
# Esto lo mantiene vivo
python3 manage.py runserver 0.0.0.0:8000
