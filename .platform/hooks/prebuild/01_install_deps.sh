#!/bin/bash
# Instalar python3-pip si no está instalado
sudo yum install -y python3-pip

# Crear entorno virtual
python3 -m venv /var/app/venv

# Activar el entorno y instalar dependencias
source /var/app/venv/bin/activate
pip install --upgrade pip
pip install --no-cache-dir -r /var/app/staging/requirements.txt
