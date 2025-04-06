#!/bin/bash

# Script to install or update AWS CLI v2 on Ubuntu

# Check if running with sudo
if [ "$EUID" -ne 0 ]; then
  echo "This script must be run with sudo"
  exit 1
fi

# Check if apt is available 
if ! command -v apt &> /dev/null; then
  echo "apt package manager not found."
  exit 1
fi

# Prompt the user for confirmation
echo "This script will install or update the AWS CLI v2 on your Ubuntu system."
read -p "Continue with installation? (y/n): " response
if [[ "$response" != "y" ]]; then
  echo "Installation cancelled."
  exit 0
fi

# Check if 'aws' command already exists and warn of potential conflict
if command -v aws &> /dev/null; then
  echo "AWS CLI appears to already be installed."
  echo "This script will attempt to update it safely if installed in /usr/local/aws-cli."
fi

# Set install locations
BIN_DIR="/usr/local/bin"
INSTALL_DIR="/usr/local/aws-cli"

# Create a temporary directory for download
TEMP_DIR=$(mktemp -d)
cd "$TEMP_DIR" || exit 1

# Download the AWS CLI zip file
curl -s "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip the installer with -u in case of update
unzip -u awscliv2.zip > /dev/null

# Run the installer with standard install and update locations
sudo ./aws/install --bin-dir "$BIN_DIR" --install-dir "$INSTALL_DIR" --update

# Clean up
cd ~
rm -rf "$TEMP_DIR"

# Confirm installation
echo "Installation complete. AWS CLI version info:"
aws --version

