# !/bin/bash

set -e

INCLUDE=${PROTO_HOME:-/usr/local/include}

mkdir -p google
cp -r $INCLUDE/google/protobuf google/protobuf
#protoc --plugin="protoc-gen-elm=${PWD}/index.js" --elm_out=src google/protobuf/compiler/plugin.proto google/protobuf/descriptor.proto