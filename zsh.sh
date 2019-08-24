# zsh and oh-my-zsh

sudo apt install --assume-yes zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp -r ./rootfs/home/greg/.oh-my-zsh/custom/themes ~/.oh-my-zsh/custom
cp ./rootfs/home/greg/.zshrc ~

rm ~/.shell.pre-oh-my-zsh

