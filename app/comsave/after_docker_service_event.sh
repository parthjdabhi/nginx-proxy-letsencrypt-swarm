#!/bin/bash
echo "\n ====> Running /app/comsave/after_docker_service_event.sh ..."
echo "\n ====> File:/app/nginx.tmpl"
cat /app/nginx.tmpl
echo "\n ====> File:/etc/nginx/conf.d/default.conf"
cat /etc/nginx/conf.d/default.conf
docker-gen -notify "nginx -s reload && /app/comsave/after_dockergen.sh" /app/nginx.tmpl /etc/nginx/conf.d/default.conf
