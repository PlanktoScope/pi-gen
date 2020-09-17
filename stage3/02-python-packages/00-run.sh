#!/bin/bash -e

on_chroot << EOF
sudo pip3 install RPI.GPIO
sudo pip3 install adafruit-blinka
sudo pip3 install adafruit-circuitpython-motorkit
EOF

install -m -o 1000 -g 1000 755 files/blinkatest.py "/home/${FIRST_USER_NAME}/test/blinkatest.py"
