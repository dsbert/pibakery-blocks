# install docker compose
sudo apt-get -y install python-pip
sudo pip install docker-compose

# get docker container
git clone https://github.com/haugene/docker-transmission-openvpn ~/docker-transmission-openvpn

# set variables (data path, vpn info, local net) by copying docker-compose file
sudo mkdir -p /mount/rpconfig
sudo mount blackbox:/volume1/transfer/rpconfig /mount/rpconfig
cp /mount/rpconfig/docker-compose-armhf.yml ~/docker-transmission-openvpn/docker-compose-armhf.yml
cp /mount/rpconfig/nfs-watch.sh /usr/local/bin/nfs-watch.sh

# run container
cd ~/docker-transmission-openvpn
docker-compose --file docker-compose-armhf.yml up -d

# set up touch script to initiate file change in watch folder
chmod u+x /usr/local/bin/nfs-watch.sh
sudo echo "* * * * * root sh /usr/local/bin/nfs-watch.sh" >> /etc/crontab

# clean up
#todo