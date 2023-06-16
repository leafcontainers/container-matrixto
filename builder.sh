#!/usr/bin/env bash
set -ouex pipefail

source="https://github.com/matrix-org/matrix.to.git"
latestTag=$(git -c 'versionsort.suffix=-' \
  ls-remote \
  --exit-code \
  --refs \
  --sort='version:refname' \
  --tags  ${source} '*.*.*' | \
  tail --lines=1 | \
  cut --delimiter='/' --fields=3 )
git clone -b ${latestTag} ${source} /opt/matrix_to

cd /opt/matrix_to
yarn
