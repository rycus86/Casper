#!/usr/bin/env bash
docker run --rm -it --name ghost-builder    \
    -v $PWD:/app -w /app                    \
    node:alpine                             \
    sh -c 'npm install && node ./node_modules/gulp/bin/gulp.js zip'
