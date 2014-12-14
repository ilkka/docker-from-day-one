#!/bin/bash
set -e
SCRIPTDIR=$(cd -P $(dirname $0); pwd)

if [[ -z $(which docker) ]]; then
  echo "No docker in \$PATH" >&2
  exit 1
fi

docker build -t webbisauna-builder $SCRIPTDIR

echo
echo "The image is built, now use run.sh to run npm commands on it."
echo "Try 'run.sh run build'"
