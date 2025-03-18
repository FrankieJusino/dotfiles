# Bash Aliases Setup

## Files in this setup
- **`.bashrc_aliases`**: Contains Git aliases
- **`bashSetup.sh`**: Automates the installation by creating a symbolic link to this repositories dotfiles and making sure bashrc loads bashrc_aliases
- **`README.md`**: this

## How to use
To install and apply your aliases, run:
```bash
bash ~/dotfiles/homefiles/bashSetup.sh
```

## Resources
The setup_bash.sh script was partially generated using chatgpt
Prompt Used:
"Generate a Bash script that automates the setup of .bashrc_aliases by backing up existing files, creating a symbolic link, ensuring .bashrc sources it".
