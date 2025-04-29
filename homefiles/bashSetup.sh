#!/bin/bash

# Backup existing .bashrc_aliases 
[ -f ~/.bashrc_aliases ] && mv ~/.bashrc_aliases ~/.bashrc_aliases.backup

# Create a symbolic link to the dotfiles repository
ln -sf ~/dotfiles/homefiles/.bashrc_aliases ~/.bashrc_aliases

# Ensure .bashrc sources .bashrc_aliases
if ! grep -q "source ~/.bashrc_aliases" ~/.bashrc; then
    echo 'source ~/.bashrc_aliases' >> ~/.bashrc
fi

read -p "Do you want to apply the changes now? (y/n): " answer
if [[ "$answer" =~ ^[Yy]$ ]]; then
    echo "bingo bango pingo pango"
    source ~/.bashrc
fi
echo "Done :)"
