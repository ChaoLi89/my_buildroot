#!/bin/sh

# make uImage for initramfs
mkimage -A arm -O linux -T ramdisk -n "My Rootfs" -d ${BINARIES_DIR}/rootfs.cpio ${BINARIES_DIR}/rootfs.uImage

echo $(dirname $0)
cp $(dirname $0)/pkg.its ${BINARIES_DIR}/pkg.its

mkimage -f ${BINARIES_DIR}/pkg.its ${BINARIES_DIR}/mx6ull.itb
