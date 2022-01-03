#!/bin/bash -e

on_chroot << EOF
  cd "/home/${FIRST_USER_NAME}/"
  su "${FIRST_USER_NAME}"
  git clone https://github.com/PlanktonPlanet/PlanktoScope/ /home/${FIRST_USER_NAME}/.node-red/projects/PlanktoScope
  ln -s ./.node-red/projects/PlanktoScope /home/${FIRST_USER_NAME}/PlanktoScope
EOF
