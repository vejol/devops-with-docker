FROM python:3.10-alpine

EXPOSE 8000

WORKDIR /usr/src/app

COPY . .

RUN pip install Django==5.0.1

CMD python manage.py runserver 0.0.0.0:8000 