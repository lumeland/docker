#
# https://hub.docker.com/r/denoland/deno/
FROM docker.io/denoland/deno:debian-1.16.2

ENV LUME_VERSION="1.3.0"

WORKDIR /home/lume/

RUN set -o errexit -o nounset; \
  useradd --home-dir /home/lume/ --no-create-home --system --uid 1001 --user-group lume; \
  deno run --allow-all https://deno.land/x/lume@v${LUME_VERSION}/install.ts

CMD ["lume"]
