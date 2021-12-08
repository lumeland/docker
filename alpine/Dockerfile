#
# https://hub.docker.com/r/denoland/deno/
FROM docker.io/denoland/deno:alpine-1.16.4

ENV LUME_VERSION="1.3.1"

WORKDIR /home/lume/

RUN set -o errexit -o nounset; \
  addgroup -S -g 1001 lume; \
  adduser -D -G lume -S -h /home/lume/ -u 1001 lume; \
  deno run --allow-all https://deno.land/x/lume@v${LUME_VERSION}/install.ts

CMD ["lume"]
