#!/bin/bash

echo "\n ====> Minio Client File:/root/.mc/config.json"
cat /root/.mc/config.json
echo "\n ====> Minio Client : Sync Pull Certs.."
mc mirror s3/$S3FS_BUCKET /etc/letsencrypt
