#!/bin/bash -e
on_chroot << EOF
  cd "/home/${FIRST_USER_NAME}/"
  su "${FIRST_USER_NAME}" -c "bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered) --confirm-install --confirm-pi"
EOF

install -v -m 644 -d "${ROOTFS_DIR}/etc/systemd/system/nodered.service.d/"
install -v -m 644 files/override.conf "${ROOTFS_DIR}/etc/systemd/system/nodered.service.d/override.conf"
install -v -o 1000 -g 1000 files/settings.js "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.node-red/settings.js"
install -v -o 1000 -g 1000 files/config.projects.json "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.node-red/.config.projects.json"
install -v -o 1000 -g 1000 files/config.users.json "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.node-red/.config.users.json"

on_chroot << EOF
  systemctl enable nodered.service
EOF
