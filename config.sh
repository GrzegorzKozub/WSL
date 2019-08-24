# wsl.conf

sudo cp ./rootfs/etc/wsl.conf /etc

# https://github.com/microsoft/WSL/issues/352

sed -i "s/#umask 022/umask 022/g" ~/.profile
. ~/.profile

# update

sudo apt update
sudo apt upgrade --assume-yes

# cleanup

sudo apt autoremove --assume-yes

