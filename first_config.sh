#!/bin/bash
# update
sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove -y;
sudo ubuntu-drivers autoinstall;
# install edge
wget https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/microsoft-edge-stable_100.0.1185.29-1_amd64.deb;
sudo apt install ./microsoft-edge*.deb -y;
rm ./microsoft-edge*.deb;
sudo apt install -f -y;
# install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
sudo apt install ./google-chrome*.deb;
rm ./google-chrome*.deb;
sudo apt install -f -y;
# install vscode
wget https://packages.microsoft.com/repos/vscode/pool/main/c/code/code_1.10.0-1488387854_amd64.deb;
sudo apt install ./code*.deb -y;
rm ./code*.deb;
sudo apt install -f -y;
# install synology drive
wget https://global.download.synology.com/download/Utility/SynologyDriveClient/3.2.0-13258/Ubuntu/Installer/x86_64/synology-drive-client-13258.x86_64.deb;
sudo apt install ./synology-drive-client*.deb -y;
rm ./synology-drive-client*.deb;
sudo apt install -f -y;
# install docker desktop
sudo apt update;
sudo apt install ca-certificates curl gnupg lsb-release -y;
sudo mkdir -p /etc/apt/keyrings;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg;
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu jammy stable" \
  | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;
sudo apt update;
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y;
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.15.0-amd64.deb;
sudo apt install ./docker-desktop*.deb -y;
rm ./docker-desktop*.deb;
sudo apt install -f -y;
# install vmware
wget https://download3.vmware.com/software/WKST-1700-LX/VMware-Workstation-Full-17.0.0-20800274.x86_64.bundle;
sudo sh ./VMware-Workstation-Full*.bundle;
rm ./VMware-Workstation-Full*.bundle;
sudo apt install linux-headers-$(uname -r) gcc -y;

# flatpak
sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove -y;
sudo apt install flatpak -y;
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo;

sudo apt remove thunderbird libreoffice* -y

sudo flatpak install flathub com.spotify.Client -y;
sudo flatpak install flathub org.telegram.desktop -y;
sudo flatpak install flathub us.zoom.Zoom -y;
sudo flatpak install flathub org.gimp.GIMP -y;
sudo flatpak install flathub org.libreoffice.LibreOffice -y;
sudo flatpak install flathub org.kde.kdenlive -y;
sudo flatpak install flathub org.mozilla.Thunderbird -y;
sudo flatpak install flathub io.github.mimbrero.WhatsAppDesktop -y;
sudo flatpak install flathub tv.plex.PlexDesktop -y;