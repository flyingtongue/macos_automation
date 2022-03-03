#!/bin/bash

# Prompt the user for their sudo password
sudo -v

# Enable passwordless sudo for the macbuild run
sudo sed -i -e "s/^%admin.*/%admin  ALL=(ALL) NOPASSWD: ALL/" /etc/sudoers

# Install Homebrew
if ! which brew > /dev/null 2>&1
then
    echo "Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
fi

# Install Python
if ! brew list python > /dev/null 2>&1
then
    echo "Installing Python 2.x"
    brew install python
fi

# Install Ansible (using pip is the officially supported way)
if ! pip2 show ansible > /dev/null 2>&1
then
    echo "Installing Ansible"
    pip3 install ansible
fi

# Perform the build
ansible-playbook -vvv main.yml 

# Disable passwordless sudo after the macbuild is complete
sudo sed -i -e "s/^%admin.*/%admin  ALL=(ALL) ALL/" /etc/sudoers
