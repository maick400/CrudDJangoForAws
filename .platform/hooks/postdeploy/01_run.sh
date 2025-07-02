#!/bin/bash
chmod +x .platform/hooks/postdeploy/01_run.sh

cd /var/app/current

echo "Instalando dependencias..."
pip install -r requirements.txt

echo "Aplicando migraciones..."
python3 manage.py makemigrations
python3 manage.py migrate

echo "Levantando servidor Django..."
nohup python3 manage.py runserver 0.0.0.0:8000 &