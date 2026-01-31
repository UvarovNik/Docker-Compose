#!/bin/bash
set -e

# Простая установка Docker CE и docker-compose plugin (ubuntu 20.04)
apt-get update -y

apt-get install -y docker.io


# Устанавливаем docker-compose plugin (compose v2)
apt-get install -y docker-compose

# Добавляем vagrant в группу docker
usermod -aG docker vagrant

# Убедимся, что systemd может запустить docker
systemctl enable --now docker
