# docker

# https://docs.docker.com/v17.09/engine/installation/linux/docker-ce/ubuntu/#install-docker-ce

sudo apt-get install --assume-yes \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

sudo apt update
sudo apt install --assume-yes docker-ce

sudo groupadd docker
sudo usermod -aG docker $USER

