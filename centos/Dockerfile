#
# https://hub.docker.com/r/denoland/deno/
FROM docker.io/denoland/deno:centos-1.17.1

ENV LUME_VERSION="1.4.1"

WORKDIR /home/lume/

RUN set -o errexit -o nounset; \
  adduser --home-dir /home/lume/ --no-create-home --system --uid 1001 --user-group lume; \
  deno run --allow-all https://deno.land/x/lume@v${LUME_VERSION}/install.ts

CMD ["lume"]
