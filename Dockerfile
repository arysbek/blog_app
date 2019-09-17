FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -y install python3-pip
RUN pip3 --version

COPY ./app /app
WORKDIR /app
RUN pip3 install -r requirements.txt
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate

ENTRYPOINT python3 manage.py runserver 0.0.0.0:8000