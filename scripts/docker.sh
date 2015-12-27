sudo apt-get update -qq -y
sudo apt-get install -qq -y --force-yes curl apt-transport-https
sudo apt-get purge -qq -y lxc-docker* || true
curl -sSL https://get.docker.com/ | sudo sh
