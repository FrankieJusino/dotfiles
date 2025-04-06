# Script: `install_awscli.sh`

This script installs or updates the AWS Command Line Interface (CLI) v2 on Ubuntu or other Debian-based systems.

### Features

- Checks that the script is run with root privileges.
- Confirms the system supports the `apt` package manager.
- Prompts the user before continuing with installation.
- Checks if the `aws` command is already present to avoid conflicts.
- Installs or updates AWS CLI to `/usr/local/aws-cli` and creates a symbolic link in `/usr/local/bin`.
- Downloads the official installer directly from AWS and installs silently.
- Cleans up temporary files after the installation is complete.
- Displays the installed version for verification.

### How to Use
Make the script executable and run the script with sudo:
```bash
chmod +x install_awscli.sh
sudo ./install_awscli.sh
```
### Citations
- [AWS CLI Official Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)  
- [ChatGPT by OpenAI](https://chat.openai.com/)    
  **Prompt used:**  
  > "Write a bash script to install or update the AWS CLI v2 on Ubuntu, including EUID and apt checks, user confirmation, command name conflict check, and silent install using official documentation."
