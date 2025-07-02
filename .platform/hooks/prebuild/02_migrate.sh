#!/bin/bash
# Activar entorno virtual
source /var/app/venv/bin/activate

# Configurar PYTHONPATH
export PYTHONPATH=/var/app/staging:$PYTHONPATH

# Ejecutar migraciones
cd /var/app/staging
python manage.py makemigrations
python manage.py migrate