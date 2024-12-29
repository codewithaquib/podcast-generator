FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip

RUN apt-get update && apt-get install -y git

RUN python3 --version && pip3 --version

RUN apt-get update && apt-get install -y python3-yaml

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]