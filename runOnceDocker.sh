#!/bin/bash
#docker build -t stock_bot:latest .
#docker run --rm -it -i --net=host -p 8000:8000 stock_bot:latest bash 
#docker run --rm -it -p 8000:8000 stock_bot:latest
docker run --rm -it -p 8000:8000 stock_bot:latest python manage.py runserver 0.0.0.0:8000

