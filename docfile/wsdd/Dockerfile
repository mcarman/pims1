FROM debian:bullseye-slim AS builder
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y make \
#  gcc \
#  musl-dev 
#  linux-headers-generic
COPY * /root/
RUN cd /root/ && make && find /root 

FROM debian:bullseye-slim  

LABEL Maintainer="mdcbldr, email"
LABEL org.label-schema.myname="wsdd on debian"
LABEL org.label-schema.version="1.0"
LABEL org.label-schema.build-date="15Jun2023"
LABEL org.label-schema.description="This is a docker container for running wsdd, windows network discovery"

WORKDIR /root/
COPY --from=0 /root/wsdd2 /usr/sbin/
RUN systemctl enable wsdd.service &&\
    systemctl start wsdd.service
ENTRYPOINT /usr/sbin/wsdd2 -N $HOSTNAME -G ${WORKGROUP:-WORKGROUP}