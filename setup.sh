#!/usr/bin/env bash
set -euo pipefail

#########################################
# Install Ansible (Debian/Ubuntu)
#########################################
echo "[INFO] Installing Ansible..."
sudo apt update
sudo apt install -y software-properties-common ansible

#########################################
# Run the playbook
#########################################
echo "[INFO] Running Ansible setup playbook..."
ansible-playbook ansible/playbooks/setup.yml

echo "[INFO] Done. Run source ~/.zshrc to apply changes"

