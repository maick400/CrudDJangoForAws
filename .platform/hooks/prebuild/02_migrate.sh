#!/bin/bash
# Ruta exacta al entorno virtual
VENV_PATH="/var/app/venv"

# Activar entorno virtual usando la ruta completa
source $VENV_PATH/bin/activate

# Usar el python del entorno virtual explícitamente
PYTHON_CMD="$VENV_PATH/bin/python3"

# Configurar PYTHONPATH
export PYTHONPATH=/var/app/staging:$PYTHONPATH

# Navegar al directorio y ejecutar migraciones
cd /var/app/staging
$PYTHON_CMD manage.py makemigrations
$PYTHON_CMD manage.py migrate