#!/bin/sh
set -ouex pipefail

apk add git

git clone https://github.com/matrix-org/matrix.to /opt/matrix_to
cd /opt/matrix_to
git fetch --tags
latestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $latestTag

yarn
