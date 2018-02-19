#!/usr/bin/env bash
# Stop all containers.

source $(dirname "$0")/prep.sh
docker_compose_with_file_path stop
