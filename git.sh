# git and openssh

sudo apt install --assume-yes git openssh-client

cp ./rootfs/home/greg/.gitconfig ~
mkdir ~/.ssh
cp /mnt/c/Users/Greg/.ssh/config ~/.ssh
cp -r /mnt/c/Users/Greg/.ssh/github.com ~/.ssh
chmod 600 ~/.ssh/config
chmod 600 ~/.ssh/github.com/id_rsa

