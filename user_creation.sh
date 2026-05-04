#!/bin/bash

# Create a new user called 'demo'
sudo useradd demo

# Set password for the new user
echo "demo:password123" | sudo chpasswd

# Add user to sudo group
sudo usermod -aG sudo demo

echo "User 'demo' created and added to sudo group."

