#!/bin/bash

# Define colors...
RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`
tool_loc=`/opt`

function RED(){
	echo -e "\n${RED}${1}${NC}"
}
function GREEN(){
	echo -e "\n${GREEN}${1}${NC}"
}
function YELLOW(){
	echo -e "\n${YELLOW}${1}${NC}"
}
function BLUE(){
	echo -e "\n${BLUE}${1}${NC}"
}

# Testing if root...
if [ $UID -ne 0 ]
then
	RED "You must run this script as root!" && echo
	exit
fi

BLUE "Updating repositories..."
sudo apt update

BLUE "Installing git..."
sudo apt install -y git

BLUE "Installing curl..."
sudo apt install -y curl

BLUE "Installing funny packages..."
sudo apt install -y figlet toilet cowsay fortune boxes lolcat sl

BLUE "Installing thefuck (cmd spelling corrector)..."
sudo apt install -y thefuck

BLUE "Installing btop & htop..."
sudo apt install -y btop htop

BLUE "Installing ranger (CLI file manager)..."
sudo apt install -y ranger

BLUE "Installing mosh..."
sudo apt install -y mosh

BLUE "Installing tree..."
sudo apt install -y tree

BLUE "Installing nano..."
sudo apt install -y nano

#Various Applications
BLUE "Installing Sublime Text..." #According to https://www.sublimetext.com/docs/linux_repositories.html
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

BLUE "Installing sqlitebrowser..."
sudo apt install -y sqlitebrowser

BLUE "Installing Wireshark..."
sudo apt install -y wireshark

BLUE "Installing VSCode..."
wget "https://go.microsoft.com/fwlink/?LinkID=760868" -O vscode.deb
sudo apt install vscode.deb
rm vscode.deb

BLUE "Installing VSCode ARM..."
wget "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-arm64" -O vscode_arm.deb
sudo apt install vscode_arm.deb
rm vscode_arm.deb

# BLUE "Installing Atom..."
# wget "https://atom.io/download/deb" -O atom.deb
# dpkg -i atom.deb
# rm atom.deb

# BLUE "Installing Virtualbox..."
# sudo apt install -y virtualbox-qt

BLUE "Installing GIMP..."
sudo apt install -y gimp

BLUE "Installing mplayer..."
sudo apt install -y mplayer

# BLUE "Installing terminator..."
# sudo apt install -y terminator

# BLUE "Setting terminator as the default terminal emulator..."
# sed -i s/Exec=gnome-terminal/Exec=terminator/g /usr/share/applications/gnome-terminal.desktop

# BLUE "Forcing a color prompt in ~/.bashrc..."
# grep "export PS1" ~/.bashrc
# if [ $? -eq 1 ]
# then
# 	echo "export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> ~/.bashrc
# fi

# BLUE "Installing docker..."
# sudo apt install -y docker.io
# sudo groupadd docker
# sudo usermod -aG docker `logname`

# BLUE "Installing Vagrant..."
# sudo apt install -y vagrant

# BLUE "Removing boilerplate home directories..."
# rmdir ~/Desktop ~/Documents ~/Downloads ~/Music ~/Pictures ~/Public ~/Templates ~/Videos

# BLUE "Installing guake..."
# sudo apt-get install -y guake

BLUE "Installing openvpn..."
sudo apt install -y openvpn

BLUE "Installing nmap..."
sudo apt install -y nmap

# BLUE "Installing pinta..."
# sudo apt-get install -y pinta

BLUE "Installing exiftool..."
sudo apt install -y exiftool

BLUE "Installing xclip..."
sudo apt install -y xclip
grep "alias xclip" ~/.bashrc
if [ $? -eq 1 ]
then
	echo "alias xclip='xclip -selection clipboard'" >> ~/.bashrc
fi

#Installing python and various packages
BLUE "Installing idle (Python IDE)..."
sudo apt install -y idle

BLUE "Installing python3..."
sudo apt install -y python3

BLUE "Installing pip..."
sudo apt install -y python3-pip

BLUE "Installing Python PIL..."
sudo apt install -y python3-pil

BLUE "Installing python-requests..."
pip install requests

BLUE "Installing Python flask..."
pip install flask

BLUE "Installing Python flask-login..."
pip install flask-login

BLUE "Installing Python colorama..."
pip install colorama

BLUE "Installing Python passlib..."
pip install passlib

BLUE "Installing Python pwntools..."
pip install pwntools

BLUE "Installing Python scapy..."
pip install scapy

BLUE "Installing Python library netifaces..."
pip install netifaces

BLUE "Installing Python library iptools..."
pip install iptools

BLUE "Installing Python library OpenSSL..."
pip install pyopenssl

BLUE "Installing Python library pydispatch..."
pip install pydispatch

BLUE "Installing impacket..."
pip install impacket

#Installing various tools
BLUE "Installing Binwalk..."
sudo apt install -y binwalk

BLUE "Installing Tesseract..."
sudo apt install -y tesseract-ocr

BLUE "Installing foremost..."
sudo apt install -y foremost

BLUE "Installing rot13..."
sudo apt install -y bsdgames	

BLUE "Installing hexedit..."
sudo apt install -y hexedit	

BLUE "Installing sqlite..."
sudo apt install -y sqlite3	

BLUE "Installing nikto..."
sudo apt install -y nikto

BLUE "Installing zbarimg..."
sudo apt install -y zbar-tools	

BLUE "Installing qrencode..."
sudo apt install -y qrencode

BLUE "Installing pdfcrack..."
sudo apt install -y pdfcrack

BLUE "Installing Hopper..."
# wget "https://www.hopperapp.com/HopperWeb/downloads/Hopper-v4-4.5.29-Linux.deb"
# dpkg -i Hopper-v4-4.5.29-Linux.deb
# rm Hopper-v4-4.5.29-Linux.deb
wget "https://d2ap6ypl1xbe4k.cloudfront.net/Hopper-v4-4.3.14-Linux.deb"
dpkg -i Hopper-v4-4.3.14-Linux.deb
rm Hopper-v4-4.3.14-Linux.deb

BLUE "Installing Oracle Java..."
sudo apt install -y default-jre
sudo apt install -y default-jdk
# echo "" | sudo add-apt-repository ppa:webupd8team/java
# sudo apt update
# sudo apt install -y oracle-java8-installer

BLUE "Downloading stegsolve.jar..."
wget "http://www.caesum.com/handbook/Stegsolve.jar" -O "/opt/stegsolve.jar"
chmod +x "/opt/stegsolve.jar"

BLUE "Installing fcrackzip..."
sudo apt install -y fcrackzip

BLUE "Installing unrar..."
sudo apt install -y unrar

BLUE "Installing steghide..."
sudo apt install -y steghide

BLUE "Installing ffmpeg..."
sudo apt install -y ffmpeg

BLUE "Installing cmake..."
sudo apt install -y cmake

BLUE "Installing sshpass..."
sudo apt install -y sshpass

BLUE "Installing tcpflow..."
sudo apt install -y tcpflow

BLUE "Installing the thing that 7z2john.pl needs..."
sudo apt install -y libcompress-raw-lzma-perl 

BLUE "Installing dos2unix..."
sudo apt install -y dos2unix

BLUE "Installing autopsy..."
sudo apt install -y autopsy

BLUE "Installing openvas..."
sudo apt install -y openvas

BLUE "Installing samba-client..."
sudo apt install -y smbclient

BLUE "Installing samba..."
sudo apt install -y samba

BLUE "Installing hashcat..."
sudo apt install -y hashcat

# BLUE "Installing mimikatz (Kali-Linux)..."
# sudo apt install mimikatz

# BLUE "Installing exploitdb (Kali-Linux)..."
#  sudo apt -y install exploitdb
#  sudo apt -y install exploitdb-bin-sploits exploitdb-papers

# BLUE "Installing metasploit-framework..."
# curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall

#Installing git tools and packages
BLUE "Installing pusheen-sl..."
git clone https://github.com/tryton-vanmeer/pusheen-sl.git $tool_loc/pusheen
sudo $tool_loc/pusheen/install.sh

BLUE "Installing php-reverse-shell..."
git clone https://github.com/slattman/php-reverse-shell.git $tool_loc/php-reverse-shell

BLUE "Installing impacket..."
git clone https://github.com/SecureAuthCorp/impacket.git $tool_loc/impacket

BLUE "Installing exploitdb..."
sudo git clone https://github.com/offensive-security/exploitdb.git $tool_loc/exploitdb
sudo ln -sf $tool_loc/exploitdb/searchsploit /usr/local/bin/searchsploit

# BLUE "Install Real VNC Viewer..."
# wget "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.17.1113-Linux-x64.deb" -O vnc_viewer.deb
# dpkg -i vnc_viewer.deb
# rm vnc_viewer.deb

# BLUE "Install Real VNC Connect (Server)..."
# wget 'https://www.realvnc.com/download/file/vnc.files/VNC-Server-6.2.1-Linux-x64.deb' -O vnc_server.deb
# dpkg -i vnc_server.deb
# rm vnc_server.deb

# BLUE "Adding VNC Connect (Server) service to the default startup /etc/rc.local..."
# grep "vncserver-x11-serviced.service" /etc/rc.local
# if [ $? -eq 1 ]
# then
# 	echo "systemctl start vncserver-x11-serviced.service" >> ~/etc/rc.local
# fi

# BLUE "Installing Go..."
# sudo apt install -y golang-go
# BLUE "Adding GOPATH and GOBIN to .bashrc, so future installs are easy.."
# grep "export GOPATH" ~/.bashrc
# if [ $? -eq 1 ]
# then
# 	echo "export GOPATH=\$HOME/.go/" >> ~/.bashrc
# fi
# grep "export GOBIN" ~/.bashrc
# if [ $? -eq 1 ]
# then
# 	echo "export GOBIN=\$HOME/.go/bin" >> ~/.bashrc
# 	echo "export PATH=\$PATH:\$GOBIN" >> ~/.bashrc
# fi

# BLUE "Installing Sublime Text..." # according to https://www.sublimetext.com/docs/3/linux_repositories.html-
# wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# sudo apt install -y apt-transport-https
# echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# sudo apt update
# sudo apt install -y sublime-text

# Packages to add
# burpsuite
# remmina: Remote Desktop Client
