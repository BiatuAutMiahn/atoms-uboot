#!/bin/sh
export CROSS_COMPILE=/nfsroot/mips-gcc472-glibc216-64bit/bin/mips-linux-gnu-
export ARCH=mips
sudo -Es make CROSS_COMPILE=$CROSS_COMPILE -j16 distclean
sudo -Es make CROSS_COMPILE=$CROSS_COMPILE -j16 isvp_t31_sfcnor_ddr128M_config
sudo -Es make CROSS_COMPILE=$CROSS_COMPILE -j16 isvp_t31_sfcnor_ddr128M
sudo cp -v u-boot-with-spl.bin /nfsroot/uboot.bin
