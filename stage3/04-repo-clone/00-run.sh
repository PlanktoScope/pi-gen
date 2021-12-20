#!/bin/bash -e

sudo -u "${FIRST_USER_NAME}" git clone https://github.com/PlanktonPlanet/PlanktoScope/ "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.node-red/projects/PlanktoScope"
sudo -u "${FIRST_USER_NAME}" ln -s ./.node-red/projects/PlanktoScope "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/PlanktoScope"
