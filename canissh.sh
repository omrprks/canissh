#!/usr/bin/env sh

HOST=${1}
PORT=${2}

[[ -z ${HOST} ]] && read -p 'HOST? ' HOST
[[ -z ${PORT} ]] && read -p 'PORT? ' PORT

PORT=${PORT:-22}
INTERVAL=${INTERVAL:-0.5}

while ! nc ${HOST} ${PORT}; do
  echo "Nope";
  sleep ${INTERVAL};
done
