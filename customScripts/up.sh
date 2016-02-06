#!/bin/sh
echo "running the  up script for my custom configurations"
cd /etc/openvpn/customScripts

VPNIF=$1
VPN_PEER_IP=$5

#set the iptables
./iptables_user_filter.sh $VPNIF

#Set the routing tables
./vpn_routing_table.sh $VPNIF $VPN_PEER_IP
