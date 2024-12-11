sudo dnf check-update && sudo dnf upgrade -y

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf install nano docker-compose wine virtualbox-guest-additions ufw git inskcape libreoffice libreoffice-langpack-pt-BR filezilla httpie curl gimp flatpak code zip unzip

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo flatpak install Redis Spotify Insomnia AnyDesk WinBox Bitwarden

sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

sudo ufw enable

sudo cp ./config/ssh.txt ~/.ssh/config

source ~/.bashrc

nvm install --lts
node -v
npm -v

npm install --global yarn autocannon typescript @types/node tsx

mkdir ~/.fonts
cp ./fonts/* ~/.fonts

mkdir ~/Code

ssh-keygen

echo 'Finished settings 🚀'