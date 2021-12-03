#!/bin/bash -e

install -v -m 644 files/gpsd "${ROOTFS_DIR}/etc/default/gpsd"
install -v -m 644 files/chrony.conf "${ROOTFS_DIR}/etc/chrony/chrony.conf"

on_chroot << EOF
	echo "pps-gpio" >> /etc/modules
  systemctl stop systemd-timesyncd.service
  systemctl disable systemd-timesyncd.service
EOF
