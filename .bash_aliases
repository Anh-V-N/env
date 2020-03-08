# Alias file

alias code='code --user-data-dir /root/Desktop/vscode'
alias pwk='cd /root/Desktop/pwk'
alias cls='clear'
alias bashrc='nano /root/.bashrc'
alias balias='vim /root/.bash_aliases'
alias lab='cd /root/Desktop/lab'

# Connect to VPN lab
alias noVPN='killall openvpn'
#alias VPN='(~/Desktop/pwk/connect-vpn.sh &); sleep 6; ip a|grep tap >/dev/null'

# Connect to lab
alias htb='cd /root/Desktop/lab/HTB; openvpn /root/Desktop/lab/HTB/avonsec.ovpn  1>/dev/null &'
alias htb-tcp='openvpn /root/Desktop/lab/HTB/avonsec-tcp.ovpn 1>/dev/null &'

# Connect to Win10 RDP
alias win10='xfreerdp /u:user /p:123456789 /size:80% /v:192.168.0.104 1>/dev/null&'

# Wpscan with api token
alias wpscan='wpscan --api-token arkst6uCCtam348F6WekjMcv96xkiL6NXXnwUYMER2E'


# Connect to Win7 offsec RDP

alias nse="cd /usr/share/nmap/scripts"
alias init='mkdir -p nmap enum exploit\/ssh post'
alias http.server='python3 -m http.server 80'
alias linenum='ln -sv /opt/privesc/linux/LinEnum.sh'
alias nishang='cd /opt/nishang'






