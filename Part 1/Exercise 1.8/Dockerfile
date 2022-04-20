FROM ubuntu:20.04

WORKDIR /usr/src/app

RUN apt-get update

RUN yes | apt-get install curl

COPY script.sh .

CMD ./script.sh
