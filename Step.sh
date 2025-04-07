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
