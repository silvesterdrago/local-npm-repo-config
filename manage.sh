#!/bin/bash
#


run_docker() {
    docker-compose up -d
}

stop_docker() {
    docker-compose down
}

add_user() {
    npm adduser --registry http://localhost:4873/
}

usage() {
  echo "USAGE:"
  echo "./manage.sh --run      # run verdaccio in docker"
  echo "./manage.sh --stop     # stop verdaccio container"
  echo "./manage.sh --add-user  # add npm repository user"

  exit 1
}

if [ $# -ne 1 ]; then
  echo "Invalid number of arguments provided."
  usage
fi

if [ "$1" == "--run" ]; then
  run_docker
elif [ "$1" == "--stop" ]; then
  stop_docker
elif [ "$1" == "--add-user" ]; then
  add_user
else
  echo "Unexpected argument: " $1
  usage
  exit 1
fi
