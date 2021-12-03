#!/bin/bash -e

on_chroot << EOF
  cd /home/"${FIRST_USER_NAME}"/.node-red/
  npm install copy-dependencies
  node_modules/copy-dependencies/index.js projects/PlanktoScope ./
  npm update
EOF
