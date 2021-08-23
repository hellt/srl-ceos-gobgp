#!/bin/bash
# configure IP address
bash /gobgp/ipaddr.sh
# start gobgpd daemon
gobgpd -t yaml -f /gobgp/gobgp.yml &
sleep 5

# make ipv4 BGP announcement
bash /gobgp/announce.sh