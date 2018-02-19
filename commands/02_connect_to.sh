#!/usr/bin/env bash

source $(dirname "$0")/prep.sh
docker_compose_with_file_path exec wordpress bash
