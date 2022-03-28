#
# https://hub.docker.com/r/denoland/deno/
ARG DENO_VERSION="1.20.3"

FROM docker.io/denoland/deno:alpine-${DENO_VERSION}

ARG LUME_VERSION="1.7.2"

WORKDIR /home/lume/

RUN set -o errexit -o nounset; \
  addgroup -S -g 1001 lume; \
  adduser -D -G lume -S -h /home/lume/ -u 1001 lume; \
  deno run --allow-all https://deno.land/x/lume@v${LUME_VERSION}/install.ts

CMD ["lume"]
