#!/usr/bin/bash

# Shutdown website service
runuser -u adampelc -- docker compose -f /home/adampelc/website/docker-compose.yml down

# Update SSL certificate
/usr/bin/certbot renew --quiet

# Relaunch website
runuser -u adampelc -- docker compose -f /home/adampelc/website/docker-compose.yml up -d