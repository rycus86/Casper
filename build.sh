#!/usr/bin/env bash

TARGET=${1:-zip}

docker run --rm -it --name ghost-builder    \
    -v $PWD:/app -w /app                    \
    node:alpine                             \
    sh -c "if [ ! -d node_modules ]; then npm install; fi && node ./node_modules/gulp/bin/gulp.js $TARGET"
