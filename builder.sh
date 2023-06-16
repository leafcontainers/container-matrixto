#!/bin/sh
set -ouex pipefail

apk add git

mkdir /opt/matrix_to
cd /opt/matrix_to
latestTag=$(git -c 'versionsort.suffix=-' ls-remote --exit-code --refs --sort='version:refname' --tags https://github.com/matrix-org/matrix.to.git '*.*.*' | tail --lines=1 | cut --delimiter='/' --fields=3)
git clone -b $latestTag https://github.com/matrix-org/matrix.to.git /opt/matrix_to
yarn
