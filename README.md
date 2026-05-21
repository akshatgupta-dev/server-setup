```bash
curl -sL https://raw.githubusercontent.com/akshatgupta-dev/server-setup/refs/heads/main/setup.sh | bash
```

## for no password sudo
```bash
echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/99_nopasswd
```