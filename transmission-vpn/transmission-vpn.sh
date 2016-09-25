# install docker compose
sudo curl -L https://github.com/hypriot/compose/releases/download/1.2.0-raspbian/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
or

Actually I may have found a quicker way to install it:
sudo apt-get -y install python-pip
sudo pip install docker-compose

# get docker container
git https://github.com/haugene/docker-transmission-openvpn ~/docker-transmission-openvpn
# set variables (data path, vpn info, local net) or copy file
todo
# run container - why is this failing?
cd ~/docker-transmission-openvpn
docker-compose --file docker-compose-armhf.yml up -d
# set up touch script to initiate file change in watch folder
todo