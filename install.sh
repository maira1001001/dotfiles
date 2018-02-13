#!/bin/bash
dir=~/dotfiles # dotfiles directory
readonly GREEN='\033[0;32m'
readonly ORANGE='\033[0;33m'
readonly BLUE='\033[0;34m'
readonly CYAN='\033[1;36m'
readonly LIGHT_BLUE='\033[1;34m'
readonly NC='\033[0m' # No Color

print_installation() {
 printf "Installing ${LIGHT_BLUE} $1 ${NC} \n"
}

print_message() {
  printf "${CYAN} $1 ${NC} $2 \n"
}


ask_for_sudo() {

  # Ask for the administrator password upfront
  print_message "Login to continue"
  sudo -v

  # Update existing `sudo` time stamp until this script has finished
  # https://gist.github.com/cowboy/3118588
  while true; do
    sudo -n true
    sleep 60
    kill -0 "$$" || exit
  done &> /dev/null &

}

is_installed() {

  if [ -f "/bin/".$1 -o -f "/usr/bin/".$1 ];then
    return 0
  else
    return 1
  fi

}

install_zsh() {

  #Test to see if zshell is installed. 
  is_installed "zsh"
  if [ $? == 1 ]; then
    print_installation "ZSH"
    sudo apt install zsh
  fi

  #set zsh as default shell
  if [[ $(echo $SHELL) != $(which zsh) ]]; then
    print_message "Setting zsh as default shell linux"
    chsh -s $(which zsh)
  fi

  sudo apt install zsh-lovers zsh-syntax-highlighting
}

ask_for_sudo 

print_message "Updating system"
sudo apt update

print_installation "GIT"
print_message "version control system for tracking changes in computer files"
sudo apt install git

print_installation "SSH"
print_message "Secure shell is a cryptographic network protocol for operating network services"
sudo apt install ssh

print_message "Generate public-key cryptographic" "to authenticate my computer with RSA public-key cryptosystem"
ssh-keygen -t rsa

install_zsh

print_installation "CURL"
sudo apt install curl



# https://github.com/Shougo/deoplete.nvim#screenshots




