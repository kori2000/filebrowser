FROM debian:buster

VOLUME /srv
EXPOSE 80

COPY .docker.json /.filebrowser.json
COPY .database.db /.database.db
COPY filebrowser /filebrowser

RUN chown -R :0 filebrowser.json \
    && chmod -R a+w filebrowser.json

RUN chown -R :0 database.db \
    && chmod -R a+w database.db

RUN chown -R :0 filebrowser \
    && chmod -R a+w filebrowser

ENTRYPOINT [ "/filebrowser" ]
