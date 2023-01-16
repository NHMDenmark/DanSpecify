#!/usr/bin/sh
sudo service redis start
cd /home/specify/currentversion/specify7
source ve/bin/activate
celery -A specifyweb worker -l INFO --concurrency=1

