#
# https://hub.docker.com/r/denoland/deno/
ARG DENO_VERSION="1.19.1"

FROM docker.io/denoland/deno:centos-${DENO_VERSION}

ARG LUME_VERSION="1.6.3"

WORKDIR /home/lume/

RUN set -o errexit -o nounset; \
  adduser --home-dir /home/lume/ --no-create-home --system --uid 1001 --user-group lume; \
  deno run --allow-all https://deno.land/x/lume@v${LUME_VERSION}/install.ts

CMD ["lume"]
