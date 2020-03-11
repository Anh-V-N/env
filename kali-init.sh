#! /bin/bash


apt update
apt dist-upgrade -y
apt install gobuster

# Get Chisel
mkdir /opt/chisel
cd /opt/chisel
wget https://github.com/jpillora/chisel/releases/download/1.3.1/chisel_windows_amd64.exe.gz
wget https://github.com/jpillora/chisel/releases/download/1.3.1/chisel_linux_amd64.gz
gunzip chisel_*
chmod +x *
cd /tmp

# GEF
apt install -y gdb python3 python3-pip cmake git gcc g++ pkg-config libglib2.0-dev gdbserver
wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh
echo source ~/.gdbinit-gef.py >> ~/.gdbinit
pip3 install keystone-engine unicorn capstone ropper
wget -q -0- https://raw.githubusercontent.com/hugsy/stuff/master/update-trinity.sh | sh

# PWntools
apt-get install -y python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade git+https://github.com/Gallopsled/pwntools.git@dev

# Get ghidra
apt install default-jdk
wget https://ghidra-sre.org/ghidra_9.1.2_PUBLIC_20200212.zip
cd /opt
unzip ghidra_9.1.2_PUBLIC_20200212.zip
ln -s /opt/ghidra_9.1.2_PUBLIC/ghidraRun /usr/bin/

# Get CrackMapExec
apt-get install -y libssl-dev libffi-dev python-dev build-essential
pip install --user pipenv
git clone --recursive https://github.com/byt3bl33d3r/CrackMapExec
cd CrackMapExec && pipenv install
pipenv shell
python setup.py install

# Download PrivESC scripts
mkdir -p /opt/privesc/linux /opt/privesc/windows
wget https://raw.githubusercontent.com/rasta-mouse/Sherlock/master/Sherlock.ps1 -O /opt/privesc/windows/Sherlock.ps1
wget https://raw.githubusercontent.com/sleventyeleven/linuxprivchecker/master/linuxprivchecker.py -O /opt/privesc/linux/linuxprivchecker.py
wget https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh -O /opt/privesc/linux/LinEnum.sh

# Personal customized scripts and environment
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
wget https://raw.githubusercontent.com/Anh-V-N/env/master/.tmux.conf -O ~/.tmux.conf
wget https://raw.githubusercontent.com/Anh-V-N/env/master/.bashrc -O ~/.bashrc
wget https://raw.githubusercontent.com/Anh-V-N/env/master/.bash_aliases -O ~/.bash_aliases

mkdir /opt/scripts
git clone https://github.com/Anh-V-N/ptinit.git /opt/scripts/ptinit
chmod +x /opt/scripts/ptinit/ptinit.sh
ln -s /opt/scripts/ptinit/ptinit.sh /usr/bin/ptinit
