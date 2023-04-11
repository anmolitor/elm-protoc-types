FROM node:16.20.0-alpine3.17
RUN apk add curl findutils

ARG PROTOC_REL="https://github.com/protocolbuffers/protobuf/releases"
ARG PROTOC_VERSION="22.2"
ARG PROTOC_GEN_ELM_VERSION="3.1.0"
ARG ELM_FORMAT_VERSION="0.8.6"

# Install protoc
RUN curl -LO ${PROTOC_REL}/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-linux-x86_64.zip
RUN unzip protoc-${PROTOC_VERSION}-linux-x86_64.zip -d /usr/local

# Install protoc-gen-elm
RUN npm install -g protoc-gen-elm@${PROTOC_GEN_ELM_VERSION}

# Install elm-format
RUN npm install -g elm-format@${ELM_FORMAT_VERSION}

RUN mkdir -p /workdir
WORKDIR /workdir
