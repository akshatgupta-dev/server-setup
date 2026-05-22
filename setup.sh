#!/bin/bash
echo "environment setup start"
sudo apt update && sudo apt upgrade -y
sudo apt install -y build-essential cmake git tmux htop python3-pip python3-venv ffmpeg
mkdir -p ~/projects
python3 -m venv ~/projects/ml_env
source ~/projects/ml_env/bin/activate
pip install --upgrade pip
echo "downloading from github"
curl -sL https://raw.githubusercontent.com/akshatgupta-dev/server-setup/refs/heads/main/requirements.txt -o requirements.txt
pip install -r requirements.txt
echo "complete"