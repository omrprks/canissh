#!/usr/bin/env sh

[[ -z $HOST ]] && read -p 'HOST? ' HOST

INTERVAL=0.5

while ! nc ${HOST} 22; do
  echo "no";
  sleep ${INTERVAL};
done
