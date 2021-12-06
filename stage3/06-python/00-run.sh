#!/bin/bash -e

on_chroot << EOF
  su - "${FIRST_USER_NAME}" -c "pip3 install -U -r /home/"${FIRST_USER_NAME}"/PlanktoScope/requirements.txt"
EOF

install -v -m 755 -o 1000 -g 1000 files/blinkatest.py               "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/test/blinkatest.py"
install -v -m 755 -o 1000 -g 1000 files/stepper-controller.py       "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/test/stepper-controller.py"
ln -s "/home/${FIRST_USER_NAME}/PlanktoScope/scripts/planktoscope"  "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.local/lib/python3.9/site-packages/planktoscope"
ln -s "/home/${FIRST_USER_NAME}/PlanktoScope/scripts/shush"         "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.local/lib/python3.9/site-packages/shush"
install -v -d "${ROOTFS_DIR}/root/.local/lib/python3.9/site-packages"
ln -s "/home/${FIRST_USER_NAME}/PlanktoScope/scripts/planktoscope"  "${ROOTFS_DIR}/root/.local/lib/python3.9/site-packages/planktoscope"
ln -s "/home/${FIRST_USER_NAME}/PlanktoScope/scripts/shush"         "${ROOTFS_DIR}/root/.local/lib/python3.9/site-packages/shush"
