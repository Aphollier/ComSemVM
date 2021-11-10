#!/bin/bash

git clone https://github.com/zekehuntergreen/CommunicationSeminar.git
apt-get -y update
apt-get install -y build-essential
apt-get install -y zlib1g-dev
sudo apt-get install -y libssl-dev openssl
wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz
tar xzvf Python-3.6.3.tgz
cd /home/vagrant/Python-3.6.3
./configure
make
sudo make install
sudo apt-get install -y ffmpeg
sudo apt-get install -y mysql-client
sudo apt-get install -y mysql-server
sudo apt-get install -y libmysqlclient-dev
sudo apt-get install -y libsqlite3-dev
cd /home/vagrant/Python-3.6.3
./configure --enable-loadable-sqlite-extension && make && sudo make install
mkdir /home/vagrant/virtualenvs
python3.6 -m venv /home/vagrant/virtualenvs/comsem
source /home/vagrant/virtualenvs/comsem/bin/activate
cd /home/vagrant/CommunicationSeminar
pip install --upgrade pip
pip install --upgrade setuptools
pip install -r requirements.txt
mysql -u root -Bse "USE mysql; UPDATE user SET authentication_string=PASSWORD('2017%ComSem') WHERE User='root'; FLUSH PRIVILEGES;"
mysql -u root -pComSem%2017 -Bse "CREATE DATABASE CommunicationSeminarDjango;"
python manage.py migrate
deactivate
