#!/bin/bash

#buena pàgina para guiarse instalaciòn de ruby https://dan.carley.co/blog/2012/02/07/rbenv-and-bundler/


source "scripts/messages.sh"

print_installation  "RBENV"
print_message "Ruby Environment"

#preguntar si el directorio existe, porque si existe corta la ejecucion
#Instalamos rbenv en ~/.rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

#Agregamos ~/.rbenv/bin a $PATH
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc

#Agregamos rbenv init al shell para habilitar el autocompletado
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

#reiniciamos la shell
exec $SHELL -l

#Clonamos el plugin en el directorio ~/.rbenv/plugins
#agrega ""install" / "uninstall" a rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

#Clonamos el plugin en el directorio ~/.rbenv/plugins
git clone https://github.com/rkh/rbenv-update.git ~/.rbenv/plugins/rbenv-update 

#instalamos algo esencial
sudo apt install build-essencial

#instalamos librerìas esenciales
sudo apt-get install \
    libreadline-dev \
    libssl-dev \
    zlib1g-dev

print_message "Ruby versions"
rbenv install -l
print_message "Choose a ruby version to install, followed by [ENTER]"
read ruby_version
print_message "Ruby ".$ruby_version." will be installed after a few seconds"
rbenv install $ruby_version

#para no tipear bundle exec adelante de cada comando
git clone git://github.com/carsomyr/rbenv-bundler.git ~/.rbenv/plugins/bundler

#selecciones el ruby de forma global. si no, no encuentra "gem"
rbenv global $ruby_version
#Bundler is the only Gem that you need install the traditional way.
gem install bundler

#instalar rails
source "rails.sh"

#seleccionar bundler localmente
bundle install --local
