#!/bin/sh

set -eu

DIR=$(CDPATH= cd -P "$(dirname "$0")" && pwd)
IMAGE=convertigo-doc-jekyll:local
docker build -t "$IMAGE" "$DIR"

if [ "$#" -eq 0 ]; then
    set -- serve --host 0.0.0.0 --livereload --force_polling --incremental
fi

if [ "$1" = serve ]; then
    docker run --rm -p 4000:4000 -p 35729:35729 \
        --volume="$DIR:/srv/jekyll" "$IMAGE" "$@"
else
    docker run --rm --volume="$DIR:/srv/jekyll" "$IMAGE" "$@"
fi
