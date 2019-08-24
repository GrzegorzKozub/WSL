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

