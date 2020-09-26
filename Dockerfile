FROM alpine:latest as alpine
RUN apk --update add ca-certificates
RUN apk --update add mailcap
RUN apt --update add curl

FROM scratch
COPY --from=alpine /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY --from=alpine /etc/mime.types /etc/mime.types

VOLUME /srv
EXPOSE 8900

RUN curl -fsSL https://filebrowser.org/get.sh

COPY .docker.json /.filebrowser.json
COPY filebrowser /filebrowser

ENTRYPOINT [ "/filebrowser" ]
