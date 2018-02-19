#!/usr/bin/env bash
#cd ..

source $(dirname "$0")/prep.sh

docker_compose_with_file_path up -d db wordpress phpmyadmin
