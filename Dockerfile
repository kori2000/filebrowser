FROM debian:buster

VOLUME /srv
EXPOSE 80

COPY .docker.json /.filebrowser.json
COPY filebrowser /filebrowser

RUN chown -R :0 filebrowser \
    && chmod -R a+w filebrowser

ENTRYPOINT [ "/filebrowser" ]
