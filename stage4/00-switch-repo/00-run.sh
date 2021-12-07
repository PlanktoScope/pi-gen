#!/bin/bash -e
on_chroot << EOF
  cd "/home/${FIRST_USER_NAME}/PlanktoScope"
  git checkout pscopehat
EOF
