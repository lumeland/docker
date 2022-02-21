#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

update_deno () {
  local deno_version
  deno_version="$(curl --fail --show-error --silent --location https://api.github.com/repos/denoland/deno/releases/latest | jq --raw-output .tag_name)"
  if [[ "${deno_version}" =~ ([0-9]+)\.([0-9]+)\.([0-9]+) ]]; then
    # printf "Using version %s\n" "${BASH_REMATCH[0]}"
    sed --regexp-extended --in-place "s/ARG DENO_VERSION=.+$/ARG DENO_VERSION=\"${BASH_REMATCH[0]}\"/" ./*/Dockerfile
  else
    printf "Failure to match/parse Git tag\n"
  fi
}

update_lume () {
  local lume_version
  lume_version="$(curl --fail --show-error --silent --location https://api.github.com/repos/lumeland/lume/releases/latest | jq --raw-output .tag_name)"
  if [[ "${lume_version}" =~ ([0-9]+)\.([0-9]+)\.([0-9]+) ]]; then
    # printf "Using version %s\n" "${BASH_REMATCH[0]}"
    sed --regexp-extended --in-place "s/ARG LUME_VERSION=.+$/ARG LUME_VERSION=\"${BASH_REMATCH[0]}\"/" ./*/Dockerfile
  else
    printf "Failure to match/parse Git tag\n"
  fi
}

update_deno
update_lume
