Create defconfig:

1. Configure the buildroot:
    BR2_EXTERNAL=$(pwd)/external/ make menuconfig -C buildroot/ O=$(pwd)/output/
2. Modify the directory of defconfig to $(BR2_EXTERNAL)/configs/netradar_defconfig
3. make other configuration
4. save and exit
5. cd output
6. make savedefconfig, netradar_defconfig will be updated

Load defconfig:
1. BR2_EXTERNAL=$(pwd)/external/ make netradar_defconfig -C buildroot/ O=$(pwd)/output/
2. cd output
3. make