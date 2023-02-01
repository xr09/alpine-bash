FROM bash

ENV USER_ID=65200
ENV GROUP_ID=65200
ENV USER_NAME=script
ENV GROUP_NAME=script

RUN set -eux; \
  apk add --no-cache coreutils curl jq; \
  addgroup -g ${GROUP_ID} ${GROUP_NAME}; \
  adduser -u ${USER_ID} -D -G ${GROUP_NAME} -s /usr/local/bin/bash ${USER_NAME}

USER ${USER_NAME}
