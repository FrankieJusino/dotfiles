# Dotfiles
This repository contains a collection of dotfiles. It includes Bash aliases for git, Vim configurations with a pretty color theme, and a script to install the AWS CLI. 

## Repository Contents
### [homefiles](https://github.com/FrankieJusino/dotfiles/tree/main/homefiles)/: Customize your Bash environment with aliases and shortcuts.

- .bashrc_aliases: Git and Bash aliases.

- bashSetup.sh: Sets up your aliases and links the file into your bash configuration.

### [sys-installs](https://github.com/FrankieJusino/dotfiles/tree/main/sys-installs)/: Automate the installation of [AWS CLI v2](https://aws.amazon.com/cli/#:~:text=The%20AWS%20CLI%20v2%20can,running%20an%20'aws'%20command.)

- install_awscli.sh: Script to install AWS CLI v2.

### [vim-config](https://github.com/FrankieJusino/dotfiles/tree/main/task1/vim-config)/: Set up a customized Vim text editor with plugins and a color scheme.

- .vimrc: Vim configuration file (themes, plugins).

- vimConfigScript: Script to install [Vundle](https://github.com/VundleVim/Vundle.vim) and set up plugins.

## Usage
- Clone the repository:
```bash
git clone https://github.com/FrankieJusino/dotfiles
```
- Set up Bash aliases:
```bash
cd homefiles
bash bashSetup.sh
```
- Set up Vim environment:
```bash
cd vim-config
bash vimConfigScript
```
- Install AWS CLI:
```bash
cd sys-installs
sudo bash install_awscli.sh
```
### Future Goals:
- Automate repetitive tasks
- Add more aliases
- Improve documentation
- Find more cool stuff to add   
  - Try out more Vim plugins

