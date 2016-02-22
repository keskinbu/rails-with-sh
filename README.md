```
wget https://raw.githubusercontent.com/keskinbu/rails-with-sh/master/install.sh
chmod 755 install.sh
./install.sh
source ~/.bash_profile
./rails.sh
```
```
bundle exec unicorn_rails -c config/unicorn.rb -E production
```
