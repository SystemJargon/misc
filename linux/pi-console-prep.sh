#!/bin/bash
sudo su
# install stuff commented 
apt install tcpdump arping isc-dhcp-server tshark nmap freeradius lighttpd nfs-kernel-server samba dnsutils aircrack-ng wireguard nftable hostapd minicom snmpd scapy tftpd-hpa syslog-ng lldpad tcpreplay avahi-util tftp wavemon vsftpd ftp
#
# install testing webserver - not for production
service lighttpd stop
rm -rf /tmp/webserver
rm -rf /var/www/html/files
mkdir /tmp/webserver
mkdir /tmp/webserver/files
echo "hello world - lighttpd test" > /tmp/webserver/index.html
chmod -R 755 /tmp/webserver/
chown -R www-data:www-data /tmp/webserver
ln -s /tmp/webserver/files /var/www/html/files
service lighttpd start
