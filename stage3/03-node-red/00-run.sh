#!/bin/bash -e
on_chroot << EOF
  bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered) --confirm-install --confirm-pi
EOF

install -v  -m 644 -d /"${ROOTFS_DIR}/etc/systemd/system/nodered.service.d/"
install -v  -m 644 files/override.conf "${ROOTFS_DIR}/etc/systemd/system/nodered.service.d/override.conf"

on_chroot << EOF
  sudo systemctl daemon-reload
  sudo systemctl enable nodered.service
EOF
