#
# https://hub.docker.com/r/denoland/deno/
FROM docker.io/denoland/deno:centos-1.16.4

ENV LUME_VERSION="1.3.1"

WORKDIR /home/lume/

RUN set -o errexit -o nounset; \
  adduser --home-dir /home/lume/ --no-create-home --system --uid 1001 --user-group lume; \
  deno run --allow-all https://deno.land/x/lume@v${LUME_VERSION}/install.ts

CMD ["lume"]
