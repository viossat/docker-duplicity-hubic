#!/bin/sh

if [ -z "$PASSPHRASE" ]; then
  echo "PASSPHRASE must be set"
  exit 1
fi

cp -f /config/hubic_credentials /root/.hubic_credentials 2> /dev/null
cp -f /config/crontab /etc/crontabs/root 2> /dev/null

exec "$@"
