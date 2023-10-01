# short guidance how to install OS on Jetson-AGX-ORIN developer kit MANUALLY

# in some cases sdk-manager does't work properly after updates/upgrades 

# and especially it'll refuse to install a software for Jetson on ubuntu 22/23

# therefore there is a simple algorithm how to install it manually on shell

# mk any dir in /home/<user>

# on jetson press central and right buttons altogether (recovery mode)
lsusb
# make sure you get an output 7023 and not 7020 (for example) regarding to nvidia hardware
cd ~
mkdir vova
cd ~/vova
wget https://developer.nvidia.com/embedded/l4t/r35_release_v1.0/release/jetson_linux_r35.1.0_aarch64.tbz2
wget https://developer.nvidia.com/embedded/l4t/r35_release_v1.0/release/tegra_linux_sample-root-filesystem_r35.1.0_aarch64.tbz2
sudo tar -xpf jetson_linux_r35.1.0_aarch64.tbz2
cd ~/vova/Linux_for_Tegra/rootfs
sudo tar -xpf ../../tegra_linux_sample-root-filesystem_r35.1.0_aarch64.tbz2
sudo apt-get install libxml2-utils
cd ..
sudo ./apply_binaries.sh
sudo ./flash.sh jetson-agx-orin-devkit mmcblk0p1cd 
