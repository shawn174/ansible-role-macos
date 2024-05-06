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
ansible-galaxy role install elliotweiser.osx-command-line-tools

# Create ~/src
mkdir ~/src
cd ~/src

# Grab the latest ansible-role-macos
echo "Installing git and cloning the latest ansible-role-macos"
brew install git
git clone https://github.com/shawn174/ansible-role-macos.git

echo "Now run: ansible-playbook ~/src/ansible-role-macos/role.yml --ask-become-pass" Enter your macOS account password when prompted for the 'BECOME' password.
