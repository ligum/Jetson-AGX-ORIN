# short guidance how to install OS on Jetson-AGX-ORIN developer kit MANUALLY

# in some cases sdk-manager won't work properly after updates/upgrades 

# and especially it'll refuse to install a software for Jetson on ubuntu 22/23

# therefore there is a simple algorithm how to install it manually on shell

# mk any dir in /home/<user>

# on jetson press central and right buttons altogether (recovery mode)
lsusb
# make sure you get an output 7023 and not 7020 (for example) regarding to nvidia hardware

cd ~

mkdir vova

cd ~/vova

wget https://developer.nvidia.com/downloads/embedded/l4t/r35_release_v4.1/release/jetson_linux_r35.4.1_aarch64.tbz2

wget https://developer.nvidia.com/downloads/embedded/l4t/r35_release_v4.1/release/tegra_linux_sample-root-filesystem_r35.4.1_aarch64.tbz2

sudo tar -xf jetson_linux_r35.4.1_aarch64.tbz2

cd ~/vova/Linux_for_Tegra/rootfs

sudo tar -xf ../../tegra_linux_sample-root-filesystem_r35.4.1_aarch64.tbz2

sudo apt-get install libxml2-utils

cd ..

sudo ./apply_binaries.sh

sudo ./tools/kernel_flash/l4t_initrd_flash.sh --external-device nvme0n1p1 \
  -c tools/kernel_flash/flash_l4t_external.xml -p "-c bootloader/t186ref/cfg/flash_t234_qspi.xml" \
  --showlogs --network usb0 jetson-agx-orin-devkit internal
