#!/bin/bash
#

COMMAND=(/bin/bash -c "make clean html")

exec docker run --rm -t \
  -v "$PWD":"$PWD" --workdir "$PWD" \
  ${DOCKER_RUN_ARGS} \
  -e "LOCAL_USER_ID=$(id -u)" \
  robinhoodis/sphinx-build:latest "${COMMAND[@]}"
