#!/bin/bash -e

on_chroot << EOF
  cd "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/PlanktoScope"
  su - "${FIRST_USER_NAME}" -c "git checkout pscopehat"
EOF
