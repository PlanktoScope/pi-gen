#!/bin/bash -e

install -v -d					"${ROOTFS_DIR}/etc/wpa_supplicant"
install -v -m 600 files/wpa_supplicant.conf	"${ROOTFS_DIR}/etc/wpa_supplicant/"
install -v -d					"${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.ssh/"
install -v -m 644 files/authorized_keys "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.ssh/authorized_keys"
