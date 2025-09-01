# alpine-bash

Docker image with bash, curl and jq

Based on upstream bash image (built with Alpine)

Built monthly, uploaded to [xr09/alpine-bash](https://hub.docker.com/r/xr09/alpine-bash) on Docker Hub

Non-root privileges, the user `script` is set by default

```shell
$ docker run --rm xr09/alpine-bash id
uid=65200(script) gid=65200(script) groups=65200(script)
```
