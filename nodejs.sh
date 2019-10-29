# nodejs

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

sudo apt install --assume-yes nodejs

npm install --global \
  @angular/cli \
  create-react-app \
  eslint \
  express-generator \
  js-beautify \
  neovim \
  rimraf \
  tslint \
  typescript \
  typescript-formatter

cp ./rootfs/home/greg/.angular-config.json ~
cp ./rootfs/home/greg/.npmrc ~
