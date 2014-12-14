#!/bin/bash
set -e
SCRIPTDIR=$(cd -P $(dirname $0); pwd)

if [[ -z $(which docker) ]]; then
  echo "No docker in \$PATH" >&2
  exit 1
fi

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 TAG" >&2
  echo >&2
  echo "Where 'TAG' is the tag to give to the built docker image." >&2
  exit 2
fi

./activator docker:stage
docker build -t "$1" "$SCRIPTDIR/target/docker"

echo
echo "Now run the following:"
echo "docker run -it --rm -p 9000:9000 $1"
