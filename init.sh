#!/bin/bash

# Move main.sh to /usr/local/bin
sudo mv main.sh /usr/local/bin

# Make main.sh executable
sudo chmod +x /usr/local/bin/main.sh

# Add "commando" function to ~/.bashrc
echo 'commando() { /usr/local/bin/main.sh "$@"; }' >> ~/.bashrc

# Source ~/.bashrc to apply changes immediately
source ~/.bashrc

echo "Initialization complete."
