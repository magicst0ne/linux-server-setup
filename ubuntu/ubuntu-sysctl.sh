#!/bin/sh

sed -ir 's/#{1,}?net.ipv4.ip_forward ?= ?(0|1)/net.ipv4.ip_forward = 1/g' /etc/sysctl.conf


cat <<EOF > /etc/sysctl.conf
fs.file-max = 65535

net.ipv4.ip_local_port_range = 32768 59000
net.ipv4.tcp_timestamps = 1
net.ipv4.tcp_tw_reuse = 1
net.ipv4.tcp_syncookies = 1
net.ipv4.tcp_fin_timeout = 30
net.ipv4.tcp_max_syn_backlog = 10240 
net.ipv4.tcp_max_tw_buckets = 10240
net.core.somaxconn = 10240
EOF