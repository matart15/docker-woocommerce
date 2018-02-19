#!/usr/bin/env bash

function docker_compose_with_file_path() {
  local COMPOSE_FILE="../docker-compose.yml"
  local SCRIPTPATH=$(dirname "$0")
  echo docker-compose -f "${SCRIPTPATH}/${COMPOSE_FILE}" $*
  docker-compose -f "${SCRIPTPATH}/${COMPOSE_FILE}" $*
}
