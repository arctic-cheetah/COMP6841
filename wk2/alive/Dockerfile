FROM ubuntu

RUN apt-get update; apt-get install -y socat make gcc

COPY itsAlive.c printFlag.c flag.txt Makefile run.sh /

ENTRYPOINT /run.sh
