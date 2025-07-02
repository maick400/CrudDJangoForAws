#!/bin/bash
source /var/app/venv/*/bin/activate
python manage.py makemigrations
python manage.py migrate