# !/bin/bash

set -e

rm -rf src
mkdir src

docker run \
  -v $(pwd)/src:/workdir \
  $(docker build -q .) sh \
  -c "protoc --elm_out=. $(find /usr/local/include/google/protobuf -type f -printf '%p ') && elm-format --yes ."

elm make $(find src -type f -printf '%p ')

git add .
