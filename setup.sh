#!/bin/bash

echo "🚀 Starting advanced server environment setup..."

# 1. Update system and install core tools
sudo apt update && sudo apt upgrade -y
sudo apt install -y build-essential cmake git tmux htop python3-pip python3-venv ffmpeg

# 2. Set up a Python Virtual Environment
mkdir -p ~/projects
python3 -m venv ~/projects/ml_env
source ~/projects/ml_env/bin/activate

# 3. Upgrade pip
pip install --upgrade pip

# 4. Download your custom requirements list from GitHub and install it
echo "📦 Downloading and installing Python packages..."
# REPLACE THE URL BELOW WITH YOUR ACTUAL RAW GITHUB LINK TO requirements.txt
curl -sL https://raw.githubusercontent.com/akshatgupta-dev/server-setup/refs/heads/main/requirements.txt -o requirements.txt

pip install -r requirements.txt

echo "✅ Setup complete! To activate your environment, run: source ~/projects/ml_env/bin/activate"