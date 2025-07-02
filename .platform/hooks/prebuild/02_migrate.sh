#!/bin/bash
# Activar el entorno virtual
source /var/app/venv/bin/activate

# Navegar al directorio de la aplicación
cd /var/app/staging

# Ejecutar migraciones
python manage.py makemigrations
python manage.py migrate