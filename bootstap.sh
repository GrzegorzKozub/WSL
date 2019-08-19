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

# nodejs and yarn

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

sudo apt install --assume-yes nodejs

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update
sudo apt install --assume-yes --no-install-recommends yarn

yarn global add \
  @angular/cli \
  babel-cli \
  create-react-app \
  eslint \
  express-generator \
  gulp-cli \
  js-beautify \
  karma-cli \
  neovim \
  pm2 \
  rimraf \
  tslint \
  typescript \
  typescript-formatter \
  yo

# dotnet

wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt update
sudo apt install --assume-yes dotnet-sdk-2.2

dotnet tool install -g dotnet-format
dotnet tool install -g dotnet-outdated

# perl

sudo apt install --assume-yes perl

# python

sudo apt install --assume-yes python python-pip

pip install httpie pynvim --user
pip install vim-vint --user --pre

# ruby

sudo apt install --assume-yes ruby ruby-dev
gem install neovim --user-install

