#!/bin/bash
echo "開始安裝elasticsearch-6.8.10"
rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

cat <<EOF >> /etc/yum.repos.d/elasticsearch.repo
[elasticsearch-6.x]
name=Elasticsearch repository for 6.x packages
baseurl=https://artifacts.elastic.co/packages/oss-6.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
EOF

yum install -y elasticsearch-oss
systemctl daemon-reload
echo "elasticsearch-6.8.10安裝完成"
