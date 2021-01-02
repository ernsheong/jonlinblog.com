#!/bin/bash

docker run \
  --mount type=bind,source="$(pwd)",target=/app \
  --rm \
  -it \
  -p 4567:4567 \
  middleman \
  bundle exec middleman $1
# server, build