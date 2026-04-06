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

Then in uboot command line, run 'boot' to boot linux.

## make change to linux configuration
1. run make linux-menuconfig
2. make changes and save
3. make linux-update-defconfig

This will update the defconfig in external/board/mx6ull/ which is specified by buildroot config BR2_LINUX_KERNEL_CUSTOM_CONFIG_FILE.