#!/bin/bash
source /var/app/staging/venv/*/bin/activate
python manage.py makemigrations
python manage.py migrate