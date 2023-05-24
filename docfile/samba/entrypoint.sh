#!/bin/bash

CONFIG_FILE="/etc/samba/smb.conf"

hostname='${HOSTNAME:-sambashare}'

set -e
if [[ ! -f $CONFIG_FILE ]]
then
cat >"$CONFIG_FILE" <<EOT
[global]
workgroup = WORKGROUP
netbios name = $hostname
server string = $hostname
map to guest = Bad User
log file = $APPDATA/samba/logs/%m
log level = 1
server role = standalone server
socket options = TCP_NODELAY SO_RCVBUF=8192 SO_SNDBUF=8192
local master = no
dns proxy = no

[guest]
# this is a public share, no auth required
path = $MEDIA_DIR/media
read only = no
guest ok = yes
guest only = yes
EOT
fi

nmbd -D
exec ionice -c 3 smbd -F --no-process-group --configfile="$CONFIG_FILE" < /dev/null
