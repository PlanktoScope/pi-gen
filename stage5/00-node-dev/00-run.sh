#!/bin/bash -e

install -v -o 1000 -g 1000 files/settings.js "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.node-red/settings.js"

on_chroot << EOF
  cd "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.node-red"
  su - "${FIRST_USER_NAME}" -c "npm install nrlint"
  su - "${FIRST_USER_NAME}" -c "npm install node-red-debugger"
  npx nrlint --init > .nrlintrc.js
EOF
