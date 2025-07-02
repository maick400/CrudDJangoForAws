#!/bin/bash
sudo yum install -y python3-pip
pip3 install --upgrade pip
pip3 install -r /var/app/staging/requirements.txt  # Asegúrate de que la ruta sea correcta