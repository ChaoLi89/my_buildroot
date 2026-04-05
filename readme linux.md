Create initramfs and zImage:
1. ./build.sh mx6ull_initrd
2. cd output/mx6ull_initrd
3. make -j8

In images folder, you can find:
1. rootfs.cpio
2. zImage
3. mx6ull_dev.dtb

Copy these three to UUU's folder and also external/board/mx6ull/uuu_scripts/mx6ull_fb.uuu.

In uuu folder, run 'uuu mx6ull_fb.uuu'

uboot will run and download images.

Then in uboot command line, run 'run my_boot' to boot linux.