#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

TAG_NAME="$(curl --fail --show-error --silent --location https://api.github.com/repos/lumeland/lume/releases/latest | jq --raw-output .tag_name)"

if [[ "${TAG_NAME}" =~ ([0-9]+)\.([0-9]+)\.([0-9]+) ]]; then
  # printf "Using version %s\n" "${BASH_REMATCH[0]}"
  sed --regexp-extended --in-place "s/ENV LUME_VERSION=.+$/ENV LUME_VERSION=\"${BASH_REMATCH[0]}\"/" ./*/Dockerfile
else
  printf "Failure to match/parse Git tag\n"
fi
