FROM python:3.9.16-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /TamilanBotsZ
WORKDIR /TamilanBotsZ
COPY . .
CMD ["/bin/bash", "/start.sh"]
