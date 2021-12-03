#!/bin/bash -e
on_chroot << EOF
  su - tester -c "npm install nrlint"
  su - tester -c "npm install node-red-debugger"
EOF
