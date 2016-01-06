sudo apt-get update -qq -y
sudo apt-get install -qq -y --force-yes curl apt-transport-https
sudo apt-get purge -qq -y lxc-docker* || true
curl -sSL https://get.docker.com/ | sudo sh

# install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.5.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
