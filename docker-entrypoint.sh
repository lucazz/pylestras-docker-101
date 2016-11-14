#!/bin/bash
/usr/local/bin/wait-for-it.sh postgres:5432 -t 10

/usr/local/bin/python manage.py runserver 0.0.0.0:8000
