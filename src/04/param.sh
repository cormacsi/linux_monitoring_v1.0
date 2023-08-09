#!/bin/bash

HOSTNAME=$HOSTNAME
TIMEZONE="$(cat /etc/timezone) UTC $(date +%:::z)"
USER=$USER
OS=$(lsb_release -d | cut -f 2)
DATE=$(date "+%d %b %Y %T")
UPTIME=$(uptime -p | cut -d " " -f 2-)
UPTIME_SEC=$(awk '{print $1}' /proc/uptime)
IP=$(hostname -i | cut -d " " -f 1)
MASK=$(netstat -rn | awk 'NR==4{print $3}')
GATEWAY=$(netstat -rn | awk 'NR==4{print $2}')
RAM_TOTAL="$(free -m | grep Mem | awk '{printf("%.3f\n",$2 / 1024)}') Gb"
RAM_USED="$(free -m | grep Mem | awk '{printf("%.3f\n",$3 / 1024)}') Gb"
RAM_FREE="$(free -m | grep Mem | awk '{printf("%.3f\n",$4 / 1024)}') Gb"
SPACE_ROOT="$(df -hk | grep "\/$" | awk '{printf("%.2f\n",$2 / 1024)}') Mb"
SPACE_ROOT_USED="$(df -hk | grep "\/$" | awk '{printf("%.2f\n",$3 / 1024)}') Mb"
SPACE_ROOT_FREE="$(df -hk | grep "\/$" | awk '{printf("%.2f\n",$4 / 1024)}') Mb"
