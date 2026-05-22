#!/usr/bin/env bash

# https://gist.github.com/vncsna/64825d5609c146e80de8b1fd623011ca
set -euo pipefail

# Define the input vars
GITHUB_REPOSITORY=${1?Error: Please pass username/repo, e.g. prb/foundry-template}
GITHUB_REPOSITORY_OWNER=${2?Error: Please pass username, e.g. prb}

echo "GITHUB_REPOSITORY: $GITHUB_REPOSITORY"
echo "GITHUB_REPOSITORY_OWNER: $GITHUB_REPOSITORY_OWNER"

# Make sed command compatible in both Mac and Linux environments
# Reference: https://stackoverflow.com/a/38595160/8696958
sedi () {
  sed --version >/dev/null 2>&1 && sed -i -- "$@" || sed -i "" "$@"
}

# Rename instances of "touchmeangel/foundry-template" to the new repo name in README.md for badges only
sedi "/gitpod/ s|touchmeangel/foundry-template|"${GITHUB_REPOSITORY}"|;" "README.md"
sedi "/gitpod-badge/ s|touchmeangel/foundry-template|"${GITHUB_REPOSITORY}"|;" "README.md"
sedi "/gha/ s|touchmeangel/foundry-template|"${GITHUB_REPOSITORY}"|;" "README.md"
sedi "/gha-badge/ s|touchmeangel/foundry-template|"${GITHUB_REPOSITORY}"|;" "README.md"