#!/bin/bash -e

on_chroot << EOF
	update-alternatives --install $(which python) python $(readlink -f $(which python2)) 1
	update-alternatives --install $(which python) python $(readlink -f $(which python3)) 2
EOF
