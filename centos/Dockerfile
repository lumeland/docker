#
# https://hub.docker.com/r/denoland/deno/
FROM docker.io/denoland/deno:centos-1.16.2

ENV LUME_VERSION="1.3.0"

WORKDIR /home/lume/

RUN set -o errexit -o nounset; \
  groupadd -g 1001 lume; \
  adduser -u 1001 -g lume lume; \
  chown -r lume:lume /home/lume/; \
  deno run --allow-all https://deno.land/x/lume@v${LUME_VERSION}/install.ts

CMD ["lume"]
