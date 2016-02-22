#!/bin/sh
sudo locale-gen en_us.utf-8
wait
sudo apt-get -y update
wait
sudo apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
wait
cd
wait
git clone git://github.com/sstephenson/rbenv.git .rbenv
wait
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
wait
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
wait
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
wait
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
wait
wget https://raw.githubusercontent.com/keskinbu/rails-with-sh/master/rails.sh
wait
chmod 755 rails.sh
wait
