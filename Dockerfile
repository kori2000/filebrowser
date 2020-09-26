FROM debian:buster

VOLUME /srv
EXPOSE 8900

RUN curl -fsSL https://filebrowser.org/get.sh

COPY .docker.json /.filebrowser.json
COPY filebrowser /filebrowser

ENTRYPOINT [ "/filebrowser" ]
