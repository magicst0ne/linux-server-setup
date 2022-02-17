#!/bin/sh

sed -i '/^#DefaultLimitNOFILE=/cDefaultLimitNOFILE=65535:524288' /etc/systemd/system.conf 
sed -i '/^#DefaultLimitNPROC=/cDefaultLimitNPROC=65535' /etc/systemd/system.conf
sed -i '/^#DefaultLimitDATA=/cDefaultLimitDATA=8589934592' /etc/systemd/system.conf
sed -i '/^#DefaultLimitFSIZE=/cDefaultLimitFSIZE=infinity' /etc/systemd/system.conf
sed -i '/^#DefaultTasksMax=/cDefaultTasksMax=10240' /etc/systemd/system.conf


cat <<EOF > /etc/security/limits.d/91-nofile.conf
root  soft  nofile   65532
root  hard  nofile   65532
EOF

cat <<EOF > /etc/security/limits.d/20-nproc.conf
root  soft  nproc    65532
root  hard  nproc    65532
EOF