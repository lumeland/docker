# docker

[![dockeri.co](https://dockeri.co/image/oscarotero/lume)](https://hub.docker.com/r/oscarotero/lume)

[![Docker Stars](https://img.shields.io/docker/stars/oscarotero/lume.svg?style=flat-square)](https://hub.docker.com/r/oscarotero/lume)
[![Docker Pulls](https://img.shields.io/docker/pulls/oscarotero/lume.svg?style=flat-square)](https://hub.docker.com/r/oscarotero/lume)

Official `Lume` Docker image(s):

- Alpine Linux: [oscarotero/lume:alpine](https://hub.docker.com/r/oscarotero/lume)
- CentOS: [oscarotero/lume:centos](https://hub.docker.com/r/oscarotero/lume)
- Debian: [oscarotero/lume:debian](https://hub.docker.com/r/oscarotero/lume) (default)
- Ubuntu: [oscarotero/lume:ubuntu](https://hub.docker.com/r/oscarotero/lume)

## Updating Images

There is a (convenient) shell script to update all `Dockerfile` manifests automatically using standard UN*X utilities.

Just execute: `./update.sh` in the project's root, and if there is a new release, `LUME_VERSION` will be updated to that
version accordingly. Commit the changes, create a Pull Request (that will verify images build successfully), and when
merged, another pipeline will take care of building the images (again) and publishing them to Docker Hub.
