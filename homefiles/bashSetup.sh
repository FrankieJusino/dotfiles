#!/bin/bash

# Backup existing .bashrc_aliases 
[ -f ~/.bashrc_aliases ] && mv ~/.bashrc_aliases ~/.bashrc_aliases.backup

# Create a symbolic link to the dotfiles repository
ln -sf ~/dotfiles/homefiles/.bashrc_aliases ~/.bashrc_aliases

# Ensure .bashrc sources .bashrc_aliases
if ! grep -q "source ~/.bashrc_aliases" ~/.bashrc; then
    echo 'source ~/.bashrc_aliases' >> ~/.bashrc
fi

# Prompt user to reload their environment
echo "Setup complete! Run 'source ~/.bashrc' or log out and log back in for changes to take effect."
