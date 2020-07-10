#!/bin/bash
echo "開始安裝mongodb-4.0"
cat <<EOF >> /etc/yum.repos.d/mongodb-org.repo
[mongodb-org-4.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.0.asc
EOF

yum install -y  mongodb-org
systemctl daemon-reload
echo "mongodb-4.0安裝完成"
