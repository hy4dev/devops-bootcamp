#!/bin/bash
set -eo pipefail

# Install Docker Engine
curl -fsSL https://get.docker.com | sh

# Allow the ssm-user to manage Docker
id ssm-user &>/dev/null || useradd -m ssm-user
usermod -aG docker ssm-user

# Deploy Rackula via Docker Compose
mkdir -p /opt/rackula
cd /opt/rackula
curl -fsSL https://raw.githubusercontent.com/RackulaLives/Rackula/main/deploy/docker-compose.persist.yml -o docker-compose.yml
mkdir -p data
chown 1001:1001 data
docker compose up -d