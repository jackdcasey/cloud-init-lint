FROM ubuntu:20.04

RUN apt-get update -y && \
    apt-get install cloud-init -y

COPY ./entrypoint.sh ./entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
