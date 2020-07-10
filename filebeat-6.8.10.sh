#!/bin/bash
echo "開始安裝filebeat-6.8.10"
yum install -y  https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.8.10-x86_64.rpm
systemctl daemon-reload
echo "filebeat-6.8.10安裝完成"
