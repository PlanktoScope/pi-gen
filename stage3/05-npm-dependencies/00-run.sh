#!/bin/bash -e

on_chroot << EOF
  cd /home/"${FIRST_USER_NAME}"/.node-red/
  su - "${FIRST_USER_NAME}" -c "npm install copy-dependencies"
  su - "${FIRST_USER_NAME}" -c "node_modules/copy-dependencies/index.js projects/PlanktoScope ./"
  su - "${FIRST_USER_NAME}" -c "npm update"
EOF
