#!/usr/bin/env bash

# run like
# ./clone-from-dark-repo.sh "../classic-dark"

set -euo pipefail

set -x 

dir=$1

mkdir -p scripts/installers

cp "$dir"/Dockerfile ./
