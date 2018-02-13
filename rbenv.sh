#!/bin/bash

source "scripts/messages.sh"

print_installation  "RBENV"
print_message "Ruby Environment"

#Instalamos rbenv en ~/.rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

#Agregamos ~/.rbenv/bin a $PATH
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc

#Agregamos rbenv init al shell para habilitar el autocompletado
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

#reiniciamos la shell
exec $SHELL -l

#Clonamos el plugin en el directorio ~/.rbenv/plugins
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

#Clonamos el plugin en el directorio ~/.rbenv/plugins
git clone https://github.com/rkh/rbenv-update.git ~/.rbenv/plugins/rbenv-update 

print_message "Ruby versions"
rbenv install -l
print_message "Choose a ruby version to install, followed by [ENTER]"
read ruby_version
print_message "Ruby ".$ruby_version." will be installed after a few seconds"


