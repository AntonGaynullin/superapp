FROM ubuntu:latest
MAINTAINER Andrey Maksimov 'maksimov.andrei@gmail.com'
RUN apt-get update -y
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y python-dev
RUN apt-get install -y build-essential
COPY . /app
WORKDIR /app 
RUN pip install -r requirements.txt

CMD python3 app.py
EXPOSE 8080
