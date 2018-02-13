#!/bin/bash

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

