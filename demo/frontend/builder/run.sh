#!/bin/bash
set -e
SCRIPTDIR=$(cd -P $(dirname $0); pwd)

if [[ -z $(which docker) ]]; then
  echo "No docker in \$PATH" >&2
  exit 1
fi

docker run -it --rm -v "$SCRIPTDIR/app:/work/app" webbisauna-builder "$@"
