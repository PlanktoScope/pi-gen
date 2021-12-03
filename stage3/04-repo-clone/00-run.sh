#!/bin/bash -e

git clone https://github.com/PlanktonPlanet/PlanktoScope/ "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.node-red/projects/PlanktoScope"
ln -s ./.node-red/projects/PlanktoScope "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/PlanktoScope"
