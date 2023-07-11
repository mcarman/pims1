FROM alpine:latest

LABEL Maintainer="Peter Winter <peter@pwntr.com>"
LABEL org.label-schema.myname="samba on alpine w/"
LABEL org.label-schema.version="1.0.2"
LABEL org.label-schema.build-date="10Jun2023"
LABEL org.label-schema.description="Simple and lightweight Samba docker container, based on Alpine Linux."
# upgrade base system and install samba and supervisord
RUN apk --no-cache upgrade && apk --no-cache add samba samba-common-tools supervisor tini

# create a dir for the config and the share
RUN mkdir /config /shared 

# copy config files from project folder to get a default config going for samba and supervisord
COPY *.conf /config/

# add a non-root user and adduser -M -u 2000 -g 2222 newusrgroup called "rio" with no password, no home dir, no shell, and gid/uid set to 1000
RUN addgroup -g 995 docker && \
    adduser -D -H -G docker -s /bin/false -u 1000 pims
# RUN echo -e "Lexington1257\nLexington1257" | smbpasswd -a -s -c /config/smb.conf pims
# create a samba user matching our user from above with a very simple password

# dd to the system for start on boot  did not work
# RUN  rc-update add samba

# volume mappings
VOLUME /config /shared


# exposes samba's default ports (135 for End Point Mapper [DCE/RPC Locator Service],
# 137, 138 for nmbd and 139, 445 for smbd)
EXPOSE 445

ENTRYPOINT ["tini", "-s", "supervisord", "-c", "/config/supervisord.conf"]
# ["bin/sh", "supervisord", "-c", "/config/supervisord.conf"]
CMD []
