# f5-cnf-lab

CNF source



exec docker run --rm -t \
  -v "$PWD":"$PWD" --workdir "$PWD" \
  ${DOCKER_RUN_ARGS} \
  -e "LOCAL_USER_ID=$(id -u)" \
  robinhoodis/sphinx-build:latest "make clean html"
