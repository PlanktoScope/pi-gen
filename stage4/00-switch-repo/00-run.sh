#!/bin/bash -e

on_chroot << EOF
  cd "/home/${FIRST_USER_NAME}/PlanktoScope"
  su "${FIRST_USER_NAME}" -c "git checkout pscopehat"
EOF
