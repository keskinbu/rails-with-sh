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
cd /home/deploy/appname
wait
clear
wait
echo “Please Write Your MySql Password [ENTER]:"
read pass
sed -i 's/your_password_here/'$pass’/g’ /home/deploy/appname/config/database.yml
RAILS_ENV=production rake db:create
RAILS_ENV=production rake db:migrate
RAILS_ENV=production rake assets:precompile
sed -i "s/# gem 'unicorn'/gem 'unicorn'/g" /home/deploy/appname/Gemfile
bundle
wait
cd config
wait
wget https://raw.githubusercontent.com/keskinbu/rails-with-sh/master/unicorn.rb
wait
mkdir -p shared/pids shared/sockets shared/log
wait
sudo vi /etc/init.d/unicorn_appname
cd /etc/init.d/
wget https://raw.githubusercontent.com/keskinbu/rails-with-sh/master/unicorn_appname
wait
sudo chmod 755 /etc/init.d/unicorn_appname
sudo update-rc.d unicorn_appname defaults
wait
cd
sudo apt-get -y install nginx
wait
cd /etc/nginx/sites-available/
wget https://raw.githubusercontent.com/keskinbu/rails-with-sh/master/nginx.conf.rails
wait
cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.example
wait
sudo rm -r /etc/nginx/sites-available/default
wait
cp /etc/nginx/sites-available/nginx.conf.rails /etc/nginx/sites-available/default
wait
sudo rm -r /etc/nginx/sites-available/nginx.conf.rails
wait
sudo service nginx restart
wait
