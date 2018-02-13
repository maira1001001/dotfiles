#!/bin/bash

distribution=$(uname -v)

if [[ $distribution =~ "Debian" ]]; then
  is_ubuntu=false
elif [[ $distribution =~ "Ubuntu" ]]; then
  is_ubuntu=true
fi

if [[ $is_ubuntu ]]; then
  printf "es ubuntuu loco"
fi


printf "ingrese un valor seguido de [ENTER] \n"
read value
echo "el valor es:"$value
