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

#########################################
# Run the playbook
#########################################
echo "[INFO] Sourcing .zshrc"
source ~/.zshrc

echo "[INFO] Done."
