#!/bin/sh
set -ouex pipefail

apk add git

git clone https://github.com/matrix-org/matrix.to /opt/matrix_to
cd /opt/matrix_to

yarn
