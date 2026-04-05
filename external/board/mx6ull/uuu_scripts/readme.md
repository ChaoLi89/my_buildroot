To download image to DDR, we can use two ways:
1. SDP
2. Fastboot

# mx6ull_sdp.uuu:
    1. PC uses SDP command to run DCD first to init DDR
    2. PC uses SDP command to download u-boot, kernel, initramfs, dtb,etc to DDR
    3. PC uses FB commands to set address variables in u-boot for these images so u-boot know where they are

## mx6ull_fb.uuu:
    1. PC uses SDP command to load and start u-boot
    2. u-boot starts and enter fastboot mode
    3. PC uese FB commands to download kernel, initramfs, dtb, etc to DDR
    4. u-boot knows where to copy images to
## mx6ull_fb2.uuu:
    This is almost same as imx6ull_fb.uuu, the difference is it use uImage format cpio so uboot can handle the cpio size.
    One can use this command to make uImage format from cpio arhieve.
    mkimage -A arm -O linux -T ramdisk -n "My Rootfs" -d rootfs.cpio rootfs.uImage
    
I found Fastboot way is much faster than SDP way.