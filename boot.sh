#!/bin/sh

qemu-system-x86_64 \
  -kernel ./linux/arch/x86_64/boot/bzImage \
  -hda ./buildroot/output/images/rootfs.ext4 \
  -append "root=/dev/sda rw console=ttyS0" \
  -nographic \
  -enable-kvm \
  -cpu host \
  -s
