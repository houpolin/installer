#!/bin/bash
echo "開始安裝graylog-3.3"

rpm -Uvh https://packages.graylog2.org/repo/packages/graylog-3.3-repository_latest.rpm

yum install -y graylog-server

systemctl daemon-reload

echo "graylog-3.3安裝完成"
