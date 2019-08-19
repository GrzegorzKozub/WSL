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

# zsh and oh-my-zsh

sudo apt install --assume-yes zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp -r ./rootfs/home/greg/.oh-my-zsh/custom/themes ~/.oh-my-zsh/custom
cp ./rootfs/home/greg/.zshrc ~

rm ~/.shell.pre-oh-my-zsh

