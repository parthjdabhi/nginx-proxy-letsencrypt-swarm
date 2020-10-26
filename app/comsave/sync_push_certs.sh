#!/bin/bash

echo "\n ====> Minio Client File:/root/.mc/config.json"
cat /root/.mc/config.json
echo "\n ====> Minio Client : Sync Push Certs.."
mc mirror --overwrite --remove /etc/letsencrypt s3/$S3FS_BUCKET
