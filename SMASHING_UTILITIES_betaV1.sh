#!/bin/bash
cmd=(dialog --backtitle "WELCOME TO SMASHING UTILITIES !! " --title "! <--  SMASHING UTILITIES --> ! " --separate-output --checklist "\nSelect options to install:\n \nCategories :
 Management (M) , Browsing (B), (UM) User Managment, Networking Service (NS), Networking Client (NC) , Text Editor (TE), \nVisual Studio Code Extensions (VSCE) , Programing Language Package (PLP),
Container Platform (CP), PC Virtualization (PCV), DataBase Client (DC), Networking Tools (NT), Framework (F), AntiVirus (A), Gaming (G) , Image Editor (IE) , Sound & Video (S&V), Disk Managment (DM), ImageBurner (IB), Voice Over IP (voIP) , Chat Client (CC) , Mail Client (MC) , Remote Desktop Protocol (RDP), Bluetooth Sniffer (BS), GUI Creator (GC)
   " 35 76 25)
options=(1 "(M) Download Updates" on
         2 "(M) Install Updates" on
         3 "(M) Install new OS distribution" off
         4 "(M) Erase unused kernel packages" off
         5 "(B) Chromium" off
         6 "(B) Tor" off
         7 "(B) Firefox" off
         8 "(B) Firefox ESR" off
         9 "(B) Brave" off
         10 "(UM) Set 12345aA as root password" off
         11 "(NS) SSH" off
         12 "(NS) Webmin" off
         13 "(NS) Zabbix-Agent" off
         14 "(NS) Grafana" off
         15 "(NS) Apache" off
         16 "(NC) Putty" off
         17 "(NC) Filezilla" off
         18 "(NC) CyberDuck CLI" off
         19 "(TE) Midnight Commander" off
         20 "(TE) Visual Studio Code" off
         21 "(TE) Notepad ++" off
         22 "(TE) Atom" off
         23 "(TE) Brackets" off
         24 "(TE) Eclipse" off
         25 "(VSCE) Docker Extension" off
         26 "(VSCE) Platform IDE" off
         27 "(VSCE) Github Pull Request Extension" off
         28 "(VSCE) Python Extension" off
         29 "(VSCE) Python Pylance" off
         30 "(VSCE) Jupyter Extensions" off
         31 "(VSCE) JavaScript Extension" off
         32 "(VSCE) PHP Debugger" off
         33 "(VSCE) PHP Intelephense " off
         34 "(VSCE) Bash Debugger" off
		 35 "(VSCE) Bash Intellisense" off
		 36 "(VSCE) HTML & CSS Extension" off
		 37 "(PLP) PHP" off
		 38 "(PLP) JAVA JDK" off
		 39 "(PLP) GO" off
		 40 "(PLP) Flutter" off
		 41 "(PLP) Python" off
		 42 "(PLP) Node.js" off
		 43 "(CP) Docker" off
		 44 "(CP) Docker-Compose" off
		 45 "(PCV) VirtualBox" off
	     46 "(PCV) QEMU (NO GUI)" off
		 47 "(PCV) QEMU (with GUI)" off
		 48 "(DC) MongoDB Compass" off
		 49 "(DC) Dbeaver" off
		 50 "(DC) SQLlite Browser" off
		 51 "(DC) PHPMyadmin" off
		 52 "(NT) NETwork Tools" off
		 53 "(NT) Traceroute" off
		 54 "(NT) nload" off
		 55 "(NT) cbm" off
		 56 "(NT) Monitorix" off
		 57 "(NT) iftop" off
		 58 "(NT) iptraf" off
		 59 "(NT) bmon" off
		 60 "(NT) SpeedTest" off
		 61 "(NT) WireShark" off
		 62 "(NT) NMAP" off
		 63 "(F) DJANGO" off
		 64 "(F) DJANGO + VirtualHost" off
		 65 "(A) CLAMAV" off
		 66 "(A) CLAMTK (ClamAV with GUI)" off
		 67 "(G) STEAM" off
		 68 "(G) RetroPie" off
		 69 "(G) Retroarch" off
		 70 "(G) Lutris" off
		 71 "(IE) GIMP" off
		 72 "(IE) KRITA" off
		 73 "(IE) InkSpace" off
		 74 "(S&V) VLC" off
		 75 "(S&V) MPC-HC" off
		 76 "(S&V) OBS-Studio" off
		 77 "(S&V) Audacity" off
		 78 "(S&V) HARUNA" off
		 79 "(S&V) KODI" off
		 80 "(DM) GPARTED" off
		 81 "(IB) BalenaEtcher" off
		 82 "(voIP) linPhone" off
		 83 "(CC) Pidgin" off
		 84 "(MC) Mozilla ThunderBird" off
		 85 "(RDP) XRDP" off
		 86 "(BS) gattlib" off
		 87 "(GC) TKinter (GUI for Python)" off
		 88 "Full-Update O.S at the end" off
        )
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear
echo "";
#
echo "---------------------------------------"
echo "! <--  SMASHING UTILITIES --> ! Proceeding to install all your selections !! ";
echo "---------------------------------------"
#
echo "";
for choice in $choices
do
    case $choice in
        1)  # Download new Updates
            sudo apt update -y 
        ;;
        2)  # Install new Updates
            sudo apt upgrade -y
        ;;
        3)  # Install new OS distribution
            sudo apt dist-upgrade -y
        ;;
        4)  # Erase unused kernel packages
            sudo apt autoremove -y
        ;;
        5)  # Install Chromium
            sudo apt install chromium-browser -y
        ;; 
        6)  # Install Tor
            sudo apt install flatpak -y
            flatpak install flathub com.github.micahflee.torbrowser-launcher -y
            flatpak run com.github.micahflee.torbrowser-launcher
        ;;
        7) # Install Firefox
            sudo apt install firefox -y
        ;;
        8) # Install Firefox ESR
            sudo add-apt-repository ppa:mozillateam/ppa -y
            sudo apt update -y && sudo apt upgrade -y
            sudo apt install firefox-esr -y
        ;;
        9) # Install Brave
            sudo apt install apt-transport-https curl -y
            sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
            echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
            sudo apt update -y && sudo apt upgrade -y
			sudo apt install brave-browser -y
        ;;
        10) # set 12345aA as root password
			sudo sh -c 'echo root:12345aA | chpasswd'
        ;;
        11) # SSH
			sudo apt install ssh -y
		;;
        12) # Install Webmin
			sudo su -c "echo 'deb [arch=amd64] http://download.webmin.com/download/repository sarge contrib' >> /etc/apt/sources.list"
			sudo apt update -y 
			sudo wget http://www.webmin.com/jcameron-key.asc
			sudo apt-key add jcameron-key.asc
			sudo apt-get install apt-transport-https -y
			sudo apt update -y
			sudo apt install webmin -y
        ;;
        13) # Zabbix-Agent 
			sudo wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-3+ubuntu22.04_all.deb
			sudo dpkg -i zabbix-release_6.0-3+ubuntu22.04_all.deb
			sudo apt update -y
			sudo apt install zabbix-agent -y
			sudo rm /etc/apt/sources.list.d/zabbix*
			sudo apt update -y && sudo apt upgrade -y
        ;;
		14) # GRAFANA
			sudo apt-get install -y apt-transport-https
			sudo apt-get install -y software-properties-common wget
			sudo wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
			echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
			sudo apt update -y
			sudo apt install grafana -y
		
		;;
		15) # APACHE
			sudo apt install apache2 -y
		;;
        16) # PUTTY	
			sudo apt install putty -y
		;;
        17) # Filezilla
			sudo apt install filezilla -y
		;;
        18) # Cyberduck CLI
			echo -e "deb https://s3.amazonaws.com/repo.deb.cyberduck.io stable main" | sudo tee /etc/apt/sources.list.d/cyberduck.list > /dev/null
			sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FE7097963FEFBE72
			sudo apt-get update
			sudo apt-get install duck
		;;
        19) # Install MC
            sudo apt install mc -y	 
		;;
        20) # Install Visual Studio Code
            sudo apt update -y && sudo apt upgrade -y
            sudo apt install apt-transport-https software-properties-common -y
            curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
            sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
            sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
            # 
            sudo apt update -y && sudo apt install code -Y
            sudo apt update -y && sudo apt upgrade -y
		;;
        21) # Install Notepad ++
			sudo rm /etc/apt/preferences.d/nosnap.pref
			sudo apt update -y && sudo apt upgrade -y
			sudo apt install snapd -y 
			sudo snap install snapd
            sudo snap install core
            sudo snap install notepad-plus-plus
		;;
        22) # Install Atom
			sudo rm /etc/apt/preferences.d/nosnap.pref
		    sudo apt install snapd -y 
            sudo snap install snapd
            sudo snap install core
            sudo snap install atom --classic
		;;
        23) # Install Brackets
			sudo rm /etc/apt/preferences.d/nosnap.pref
			sudo apt install snapd -y 
			sudo snap install snapd
			sudo snap install core
			sudo snap install brackets --classic
		;;
        24) # Install Eclipse
			sudo rm /etc/apt/preferences.d/nosnap.pref
			sudo apt install snapd -y 
			sudo snap install snapd
			sudo snap install core
			sudo snap install eclipse --classic
		;;
        25) # Install DOCKER EXTENSION
			code --install-extension  ms-azuretools.vscode-docker
		;;
        26) # Install PLTAFORM.IDE EXTENSION
			code --install-extension platformio.platformio-ide
		;;
        27) # Install GITHUB EXTENSION
			code --install-extension GitHub.vscode-pull-request-github
		;;        
        28) # Install Python Extension
			code --install-extension  ms-python.python
		;;
        29) # Install Python Pylance EXTENSION
			code --install-extension ms-python.vscode-pylance
        ;;
        30) # Install Jupyter EXTENSION
			code --install-extension ms-toolsai.jupyter
			code --install-extension ms-toolsai.jupyter-keymap
			code --install-extension ms-toolsai.jupyter-renderers
        ;;
        31) # Install JAVASCRIPT EXTENSION
			code --install-extension xabikos.JavaScriptSnippets	
        ;;
        32) # Install PHP DEBUGGER EXTENSION
			code --install-extension xdebug.php-debug 
        ;;
        33) # Install PHP Intelephense EXTENSION
			code --install-extension bmewburn.vscode-intelephense-client 
        ;;
        34) # Install BASH DEBUGGER EXTENSION
			code --install-extension rogalmic.bash-debug
        ;;
        35) # Install BASH INTELLISENSE EXTENSION
			code --install-extension mads-hartmann.bash-ide-vscode	
        ;;
        36) # Install HTML & CSS EXTENSION
			code --install-extension ecmel.vscode-html-css
        ;;
        37) # Install PHP
			sudo apt-get update -y && sudo apt upgrade -y
			sudo apt install php -y 
        ;; 
		38) # Install JAVA JDK
			sudo apt install default-jdk -y
		;;
        39) # Install GO
			sudo apt install golang-go -y
        ;;
        40) # Install Flutter
			sudo rm /etc/apt/preferences.d/nosnap.pref
			sudo apt update -y && sudo apt upgrade -y
			sudo apt install snapd -y 
			sudo snap install core
			sudo snap install flutter --classic
        ;;
        41) # Install Python
			sudo add-apt-repository ppa:deadsnakes/ppa -y
			sudo apt update -y && sudo apt upgrade -y
			sudo apt install python3.10 -y
        ;;
        42) # Install Node.js
			sudo apt-get install curl
			curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
			sudo apt-get install nodejs -y
        ;;
		43)	# Install Docker
			sudo apt-get update && sudo apt-get upgrade -y
			sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
			curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
			sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
			sudo apt-get update && sudo apt-get upgrade -y
			apt-cache policy docker-ce
			sudo apt install docker-ce -y
		;;
		44) # Install Docker-Compose
			sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
			sudo chmod +x /usr/local/bin/docker-compose
		;;
		45) # VirtualBox
			sudo apt install virtualbox -y
		;;
		46) # QEMU (NO GUI)
			sudo apt update -y
			sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils -y
		;;
		47) # QEMU (with GUI)
			sudo apt update
			sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
			sudo apt install virt-manager -y
		;;
		48)	# Install MongoDB Compass
			wget https://downloads.mongodb.com/compass/mongodb-compass_1.28.1_amd64.deb
			sudo apt install ./mongodb-compass_1.28.1_amd64.deb -y
		;;
		49)	# Install Dbeaver
			wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
			sudo dpkg -i dbeaver-ce_latest_amd64.deb
		;;
		50) # Install SQLlite BRowser
			sudo apt update -y && sudo apt upgrade -y
			sudo apt install sqlite3 -y
		;;
		51)  # Install PHPmyadmin
			sudo apt-get update -y && sudo apt upgrade -y
			sudo apt-get install -y phpmyadmin -y
		;;
		52) # Install NETtools
			sudo apt install net-tools -y
		;;
		53) # Install Traceroute		
			sudo apt install traceroute -y
		;;
		54) # Install Nload
			sudo apt install nload -y
		;;
		55) # Install CBM
			sudo apt install cbm -y
		;;
		56) # Install Monitorix
			sudo apt install monitorix -y
		;;
		57) # Install iftop 
			sudo apt install iftop -y
		;;
		58) # Install iptraf
			sudo apt install iptraf -y
		;;
		59) # Install bmon
			sudo apt install bmon -y
		;;
		60) # Install SpeedTest-CLI
			apt install python3-pip -y
			pip3 install speedtest-cli
		;;
		61) # Install WireShark
			sudo apt install wireshark -y
		;;
		62) # Install NMAP
			sudo apt install nmap -y		
		;;
		63) # Install DJANGO 
			sudo add-apt-repository ppa:deadsnakes/ppa -y
			sudo apt update -y && sudo apt upgrade -y
			sudo apt install python3.10 -y
			apt install python3-pip -y
			pip3 install Django		
		;;
		64) # DJANGO + VirtualHost
		if [ ! -d "$HOME/.local/bin" ] ; then
			PATH="$HOME/.local/bin:$PATH"
			sudo su -c "echo PATH="$HOME/.local/bin:$PATH" >> /home/$USER/.bashrc"
			source ~/.bashrc
			echo $PATH
			fi	
			sudo add-apt-repository ppa:deadsnakes/ppa -y
			sudo apt update -y && sudo apt upgrade -y
			sudo apt install python3.10 -y
			apt install python3-pip -y
		#
			mkdir /home/$USER/Documents/DJANGO
			mkdir /home/$USER/Documents/DJANGO/init
		    pip3 install virtualenv
		    mkdir /home/$USER/Documents/DJANGO/init/Environment
		    mkdir /home/$USER/Documents/DJANGO/init/Project
		    cd /home/$USER/Documents/DJANGO/init/Environment
			virtualenv init –python=python3
			cd /home/$USER/Documents/DJANGO/init/Environment/init/bin/
			source activate
			pip3 install django
			cd /home/$USER/Documents/DJANGO/init/Project
			django-admin startproject django_init
			cd django-init/
			mkdir applications
			cd applications/
			touch _init_.py
			django-admin startapp principal
			cd principal/
			dir
		;;
		65) # Install CLAMAV
			sudo apt update -y && sudo apt upgrade -y
			sudo apt install clamav clamav-daemon -y
		;;
		66) # Install Clamtk (ClamAV with GUI)
			sudo apt update -y && sudo apt upgrade -y
			sudo apt install clamav clamav-daemon -y
			sudo apt clamtk -y
		;;
		67) # Install STEAM
			sudo add-apt-repository multiverse -y
			sudo apt update -y && sudo apt upgrade -y
			sudo apt install steam -y
		;;
		68) # Install Retropie
			sudo apt update -y && sudo apt upgrade -y
			sudo apt install git lsb-release -y
			cd
			git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
			cd RetroPie-Setup
			chmod +x retropie_setup.sh
			sudo __nodialog=1 /home/$USER/RetroPie-Setup/retropie_packages.sh setup basic_install
		;;
		69) # Install Retroarch
			sudo apt update -y && sudo apt upgrade -y
			sudo add-apt-repository ppa:libretro/stable -y
			sudo apt-get install retroarch -y
		;;
		70) # Install LUTRIS
			sudo add-apt-repository ppa:lutris-team/lutris -y
			sudo apt update -y && sudo apt upgrade -y
			sudo apt install lutris -y 
		;;
		71) # Install GIMP
			sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
			sudo apt update && sudo apt upgrade -y
			sudo apt install gimp -y
		;;
		72) # Install Krita  
			sudo apt install krita -y
		;;
		73) # Install Inkscape
			sudo apt install inkscape -y
		;;
		74) # Install VLC
		sudo apt install vlc -y
		;;
		75) # Install MPC-HC
			sudo rm /etc/apt/preferences.d/nosnap.pref
			sudo apt update -y && sudo apt upgrade -y
			sudo apt install snapd -y 
			sudo snap install snapd
            sudo snap install core
			sudo snap install mpc-hc --edge
		;;
		76) # Install OBS Studio
			sudo apt install obs-studio -y
		;;
		77) # Install Audacity
			sudo apt install audacity -y
		;;
		78) # HARUNA
			sudo rm /etc/apt/preferences.d/nosnap.pref
			sudo apt update -y && sudo apt upgrade -y
			sudo apt install snapd -y 
			sudo snap install snapd
			sudo snap install core
			sudo snap install haruna --candidate
			sudo snap refresh haruna
		;;
		79) # Install KODI
			sudo apt install software-properties-common -y
			sudo add-apt-repository -y ppa:team-xbmc/ppa
			sudo apt install kodi -y
		;;
		80) # Install gparted
			sudo apt install gparted -y
		;;
		81) # Install BALENAETCHER
			curl -1sLf \
			'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' \
			| sudo -E bash
			sudo apt update
			sudo apt install balena-etcher-electron
		;;		
		82) # Install LinPhone
			sudo apt -y install linphone -y
		;;
		83) # Install PIDGIN
			sudo apt install pidgin -y
		;;
		84) # Install Mozilla ThunderBird
			sudo add-apt-repository ppa:lucid-bleed/ppa -y
			sudo apt-get update -y
			sudo apt-get install thunderbird  -y
		;;
		85) # install XRDP
			sudo apt install xrdp -y
		;;
		86) # Install GATLIB
			sudo apt-get update -y
			sudo apt-get install libbluetooth-dev bluez bluez-hcidump libboost-python-dev libboost-thread-dev libglib2.0-dev -y
			sudo pip install gattlib -y
		;;
		87) # Install TKinter
			apt install python3-pip -y
			sudo pip3 install tk -y
		;;
		88) # Full-Update OS at the end
			echo "---------------------------------------"
			echo "! <--  SMASHING UTILITIES --> ! Proceding to leave OS on date !! "
			echo "---------------------------------------"
			sudo apt update -y && sudo apt upgrade -y
			sudo apt dist-upgrade -y && sudo apt autoremove -y
		;;
    esac
done
#
echo "";
#
echo "---------------------------------------"
echo "! <--  SMASHING UTILITIES --> ! Installed all your selections !! ";
echo "---------------------------------------"
#
echo "";
#
