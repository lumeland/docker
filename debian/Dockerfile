#
# https://hub.docker.com/r/denoland/deno/
ARG DENO_VERSION="1.22.1"

FROM docker.io/denoland/deno:debian-${DENO_VERSION}

ARG LUME_VERSION="1.9.1"

WORKDIR /home/lume/

RUN set -o errexit -o nounset; \
  useradd --home-dir /home/lume/ --no-create-home --system --uid 1001 --user-group lume; \
  deno run --allow-all https://deno.land/x/lume@v${LUME_VERSION}/install.ts

CMD ["lume"]
