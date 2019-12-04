# nodejs

cp ./rootfs/home/greg/.angular-config.json ~
cp ./rootfs/home/greg/.npmrc ~

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

sudo apt install --assume-yes nodejs

npm install --global \
  @angular/cli \
  create-react-app \
  eslint \
  express-generator \
  js-beautify \
  neovim \
  pm2 \
  rimraf \
  serverless \
  tslint \
  typescript \
  typescript-formatter

