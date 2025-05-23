#!/bin/bash

# 更新系统包
sudo apt-get update

# 安装必要的系统依赖
sudo apt-get install -y build-essential npm autoconf automake libtool python3-dev

# 安装 npm 和 pm2
sudo npm install -g pm2

# On macOS and Linux.
curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env

curl -fsSL https://test.docker.com -o test-docker.sh
sudo sh test-docker.sh

sudo sh install_talib.sh

docker compose up -d grafana

sudo apt update && sudo apt install software-properties-common
sudo add-apt-repository ppa:trzsz/ppa && sudo apt update

sudo apt install trzsz
