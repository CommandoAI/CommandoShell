#!/bin/bash

os_type=$(uname)

sudo mkdir -p /usr/local/bin
sudo cp main.sh /usr/local/bin

sudo chmod +x /usr/local/bin/main.sh

if [[ $os_type == "Linux" ]]; then
  echo 'commando() { /usr/local/bin/main.sh "$@"; }' >> ~/.bashrc
  source ~/.bashrc

elif [[ $os_type == "Darwin" ]]; then
  echo 'commando() { /usr/local/bin/main.sh "$@"; }' >> ~/.zshrc
  source ~/.zshrc

fi

echo "Setup complete."
