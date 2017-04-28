#!/bin/bash -ex

### DEVELOPMENT ONLY SCRIPT ###

# CREATE PROJECT DIRECTORIES
mkdir -p log media/uploads

# INSTALL VIRTUALENV REQS
pip install -r reqs/base

# MIGRATE APPLICATIONS AND INSERT INITIAL DATA
#python manage.py makemigrations
python manage.py migrate
python manage.py load_data

# CREATE ADMIN SUPERUSER
python manage.py createsuperuser --username=admin
