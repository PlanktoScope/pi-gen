#!/bin/bash -e

install -v -m 644 files/gpio-init.service "${ROOTFS_DIR}/etc/systemd/system/gpio-init.service"
install -v -m 755 files/stepper-disable "${ROOTFS_DIR}/usr/bin/stepper-disable"

on_chroot << EOF
  systemctl enable gpio-init.service
EOF
