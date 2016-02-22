#!/bin/sh
rbenv install -v 2.2.3
wait
rbenv global 2.2.3
wait
ruby -v
wait
echo "gem: --no-document" > ~/.gemrc
wait
gem install bundler
wait
gem install rails
wait
rbenv rehash
wait
rails -v
wait
echo -ne '\n' | sudo add-apt-repository ppa:chris-lea/node.js
wait
sudo apt-get -y update
wait
sudo apt-get -y install nodejs
wait
sudo apt-get -y install mysql-server mysql-client libmysqlclient-dev
wait
gem install mysql2
wait
cd /home
wait
mkdir deploy
wait
cd deploy
wait
rails new appname  -d mysql
wait
cd appname
wait
cd config
wait
cp database.yml database.yml.example
wait
sudo rm -r database.yml
wait
cp secrets.yml secrets.yml.example
wait
sudo rm -r secrets.yml
wait
wget https://raw.githubusercontent.com/keskinbu/rails-with-sh/master/secrets.yml
wait
wget https://raw.githubusercontent.com/keskinbu/rails-with-sh/master/database.yml
wait
cd
wait
sudo rm -r rails.sh
wait
cd /home/deploy/appname
echo 'It is DONE'

