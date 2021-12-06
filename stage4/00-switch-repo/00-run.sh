#!/bin/bash -e
on_chroot << EOF
  cd "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/PlanktoScope"
  git checkout pscopehat
EOF
