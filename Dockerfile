FROM filebrowser/filebrowser:latest

COPY settings.json /.filebrowser.json

RUN /filebrowser config init
RUN /filebrowser config set --branding.name "Home Storage"
RUN /filebrowser users add admin yourPass --perm.admin

EXPOSE 5200

ENTRYPOINT [ "/filebrowser" ]