#!/bin/bash

# Update system
echo 'Updating system'
sudo pamac update && sudo pamac upgrade

# Install packages
echo 'Installing all packages'
sudo pamac install nano neofetch docker docker-compose yay firefox code bitwarden wine virtualbox ufw gufw git htop flameshot inkscape libreoffice-still-pt-br zsh zsh-autosuggestions zsh-completions appimagelauncher filezilla reaper httpie curl flatpak gimp
echo 'Packages installation finished'

# Add flathub on flatpak
echo 'Configuring the flatpak'
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install flatpak packages
echo 'Installing Flatpak Apps'
sudo flatpak install Redis Spotify Insomnia AnyDesk WinBox

# Install nvm
echo 'Installing node version manager (Nvm)'
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

# Config nvm
echo 'Configuring nvm env on .zshrc'
echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc
source .zshrc

# Install node.js
echo 'Installing Node.js'
nvm install --lts
node -v
npm -v

# Install npm packages
echo 'Installing npm packages'
npm install --global yarn autocannon typescript @types/node tsx

# Add fonts
echo 'Configuring the fonts'
mkdir ~/.fonts
cp ./fonts/* ~/.fonts

# Create code directory
echo 'Creating code directory'
mkdir ~/Code

# Generate ssh key
echo 'Generating ssh key'
ssh-keygen

echo 'Finished settings 🚀'