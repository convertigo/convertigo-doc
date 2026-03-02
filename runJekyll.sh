#!/bin/sh

DIR=$( cd -P $(dirname $0); pwd)
docker run --rm -p 4000:4000 -p 35729:35729 --volume="$DIR:/srv/jekyll" --volume="$DIR/vendor/bundle:/usr/local/bundle" -it jekyll/jekyll:4 jekyll serve --livereload --force_polling --incremental
