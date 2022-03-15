FROM filebrowser/filebrowser:latest

COPY settings.json /.filebrowser.json

RUN /filebrowser config init
RUN /filebrowser config set --branding.name "KORALTAN.de"
RUN /filebrowser users add admin drom

EXPOSE 5200

ENTRYPOINT [ "/filebrowser" ]