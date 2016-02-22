#!/bin/sh
sudo apt-get -y update &
wait
sudo apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev &
wait
cd &
wait
git clone git://github.com/sstephenson/rbenv.git .rbenv &
wait
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile &
wait
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile &
wait
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build &
wait
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile &
wait
source ~/.bash_profile &
wait
rbenv install -v 2.2.3 &
wait
rbenv global 2.2.3 &
wait
ruby -v &
wait
echo "gem: --no-document" > ~/.gemrc &
wait
gem install bundler &
wait
gem install rails &
wait
rbenv rehash &
wait
rails -v &
wait
echo -ne '\n' | sudo add-apt-repository ppa:chris-lea/node.js &
wait
sudo apt-get -y update &
wait
sudo apt-get -y install nodejs &
wait
sudo apt-get -y install mysql-server mysql-client libmysqlclient-dev &
wait
gem install mysql2 &
wait
cd /home &
wait
mkdir deploy &
wait
cd deploy &
wait
rails new appname  -d mysql &
wait
cd appname &
wait
cd config &
wait
cp database.yml database.yml.example &
wait
sudo rm -r database.yml &
wait
cp secrets.yml secrets.yml.example &
wait
sudo rm -r secrets.yml &
wait
wget https://raw.githubusercontent.com/keskinbu/rails-with-sh/master/secrets.yml &
wait
wget https://raw.githubusercontent.com/keskinbu/rails-with-sh/master/database.yml &
wait
cd /home/deploy/appname &
wait
echo 'It is DONE'
