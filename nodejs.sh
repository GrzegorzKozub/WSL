# nodejs

cp /c/Users/Greg/.angular-config.json ~
chmod 644 ~/.angular-config.json

cp ./rootfs/home/greg/.npmrc ~
chmod 644 ~/.npmrc

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

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

