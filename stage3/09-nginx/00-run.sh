#!/bin/bash -e

rm "${ROOTFS_DIR}/etc/nginx/sites-enabled/default"
ln -s "/home/${FIRST_USER_NAME}/PlanktoScope/scripts/gallery/gallery.conf" "${ROOTFS_DIR}/etc/nginx/sites-enabled/gallery.conf"
