FROM alpine:edge

RUN apk update && \
    apk --no-cache add bash cloud-init

COPY ./entrypoint.sh ./entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
