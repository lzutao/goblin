#!/usr/bin/env bash
set -eux
set -o pipefail

curl -sSf -O "${MINGW_URL}/${MINGW_ARCHIVE}"
7z x -y "${MINGW_ARCHIVE}" -o/c/mingw
rm "${MINGW_ARCHIVE}"
echo '##vso[task.setvariable variable=PATH;]C:\mingw\$(MINGW_DIR)\bin;$(PATH)'
