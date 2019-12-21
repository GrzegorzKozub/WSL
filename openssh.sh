# openssh

sudo apt install --assume-yes openssh-client

mkdir ~/.ssh
chmod 755 ~/.ssh

cp /c/Users/Greg/.ssh/config ~/.ssh
chmod 600 ~/.ssh/config

cp -r /c/Users/Greg/.ssh/github.com ~/.ssh
chmod 600 ~/.ssh/github.com/*

cp -r /c/Users/Greg/.ssh/amazonaws.com ~/.ssh
chmod 600 ~/.ssh/amazonaws.com/*

