# dotnet

wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt update
sudo apt install --assume-yes dotnet-sdk-3.0

dotnet tool install -g dotnet-format
dotnet tool install -g dotnet-outdated

