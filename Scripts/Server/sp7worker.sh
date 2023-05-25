#!/usr/bin/sh
cd /home/specify/currentversion/specify7
source ve/bin/activate
celery -A specifyweb worker -l INFO --concurrency=1

