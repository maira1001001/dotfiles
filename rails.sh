# rbenv install 2.5.0

#web para instalar en ubuntu 18.10 y ruby 2.5.0 
#https://gorails.com/setup/ubuntu/18.10ç

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

#instalar gem
sudo apt install ruby-dev

#install rails
gem install rails -v 5.2.0

#install libs for mysql2 
sudo apt-get install mysql-server mysql-client libmysqlclient-dev
sudo apt-get install libmysqlclient-dev
sudo apt install ruby-mysql2

#create rails proyect 
rails new lalala -d mysql

