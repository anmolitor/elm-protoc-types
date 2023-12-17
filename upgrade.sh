# !/bin/bash

set -e

rm -rf src
mkdir src

docker run \
  --rm -v $(pwd)/src:/workdir \
  $(docker build -q .) sh \
  -c "protoc --elm_out=. --elm_opt=json $(find /usr/local/include/google/protobuf -type f -printf '%p ') && elm-format --yes ."

elm make $(find src -type f -printf '%p ')

git add .
