#!/bin/bash

os_type = $(uname)

# Move main.sh to /usr/local/bin
sudo mv main.sh /usr/local/bin

# Make main.sh executable
sudo chmod +x /usr/local/bin/main.sh

# Add "commando" function to ~/.bashrc
if [[ $os_type == "Linux" ]]; then
  echo 'commando() { /usr/local/bin/main.sh "$@"; }' >> ~/.bashrc
  source ~/.bashrc

elif [[ $os_type == "Darwin" ]]; then
  echo 'commando() { /usr/local/bin/main.sh "$@"; }' >> ~/.zshrc
  source ~/.zshrc

echo "Setup complete."
