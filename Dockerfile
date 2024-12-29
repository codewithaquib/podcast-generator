FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip
RUN git


RUN python3 --version && pip3 --version

RUN pip3 install --upgrade pip
RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]