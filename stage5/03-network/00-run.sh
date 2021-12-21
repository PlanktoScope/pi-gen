#!/bin/bash -e

install -v -d					"${ROOTFS_DIR}/etc/wpa_supplicant"
install -v -m 600 files/wpa_supplicant.conf	"${ROOTFS_DIR}/etc/wpa_supplicant/"
install -v -m 0700 -owner 1000 -u 1000	"${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.ssh/"
install -v -m 0600 -owner 1000 -u 1000files/authorized_keys "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.ssh/authorized_keys"
