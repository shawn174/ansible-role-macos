#!/bin/sh

## Installing Ansible + required items
echo "installing pre-req Apple tools"

xcode-select --install

sudo xcodebuild -license

/usr/sbin/softwareupdate --install-rosetta

# Enable remote login
echo "enabling remote login"
sudo systemsetup -setremotelogin on

# Install homebrew
echo "installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Install Ansible and some dependencies
echo "installing ansible"
brew install ansible
echo "installing Ansible requirements"
ansible-galaxy collection install geerlingguy.mac

# Create ~/src
mkdir ~/src
cd ~/src

# Grab the latest ansible-role-macos
echo "Pulling the latest ansible-role-macos"
git clone 
echo "Now run: ansible-playbook ~/src/ansible-role-macos/role.yml"
