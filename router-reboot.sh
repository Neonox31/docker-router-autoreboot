#!/bin/sh

id=$(wget -q -O- --http-user ${ROUTER_USER} --http-password ${ROUTER_PASSWORD} http://${ROUTER_IP}/ADVANCED_home2.htm | perl -lne '/id=([a-z0-9]+)/ && print $1')
wget -q -O /dev/null --http-user ${ROUTER_USER} --http-password ${ROUTER_PASSWORD} --post-data 'buttonSelect=2' http://${ROUTER_IP}/newgui_adv_home.cgi?id="$id"
