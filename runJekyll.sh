#!/bin/sh

DIR=$( cd -P $(dirname $0); pwd)
docker run --rm -p 4000:4000 --volume="$DIR:/srv/jekyll" --volume="$DIR/vendor/bundle:/usr/local/bundle" -it jekyll/jekyll:3.8 jekyll build --incremental