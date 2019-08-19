# wsl.conf

sudo cp ./rootfs/etc/wsl.conf /etc

# https://github.com/microsoft/WSL/issues/352

sed -i "s/#umask 022/umask 022/g" ~/.profile
. ~/.profile

# update

sudo apt update
sudo apt upgrade --assume-yes

# git and openssh

sudo apt install --assume-yes git openssh-client

cp ./rootfs/home/greg/.gitconfig ~
mkdir ~/.ssh
cp /mnt/c/Users/Greg/.ssh/config ~/.ssh
cp -r /mnt/c/Users/Greg/.ssh/github.com ~/.ssh
chmod 600 ~/.ssh/github.com/id_rsa

