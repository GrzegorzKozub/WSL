# openssh

sudo apt install --assume-yes openssh-client

mkdir ~/.ssh

cp /mnt/c/Users/Greg/.ssh/config ~/.ssh
chmod 600 ~/.ssh/config

cp -r /mnt/c/Users/Greg/.ssh/github.com ~/.ssh
chmod 600 ~/.ssh/github.com/id_rsa

cp -r /mnt/c/Users/Greg/.ssh/amazonaws.com ~/.ssh
chmod 600 ~/.ssh/amazonaws.com/*

