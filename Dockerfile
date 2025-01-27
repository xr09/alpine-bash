FROM bash

ENV USER_ID=65200
ENV GROUP_ID=65200
ENV USER_NAME=script
ENV GROUP_NAME=script

RUN set -eux; \
  apk add --no-cache coreutils curl jq pcre2-tools rsync; \
  addgroup -g ${GROUP_ID} ${GROUP_NAME}; \
  adduser -D -u ${USER_ID} -G ${GROUP_NAME} -s /usr/local/bin/bash ${USER_NAME}

USER ${USER_NAME}
