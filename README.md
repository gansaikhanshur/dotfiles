# Mac Dotfiles Setup with Powerlevel10k

This repository contains configuration files and setup scripts for a Mac environment using Zsh and the Powerlevel10k theme.

## 1. Install Powerlevel10k

Follow the official instructions to install Powerlevel10k:

https://github.com/romkatv/powerlevel10k

## 2. Configure Powerlevel10k

Run the configuration wizard:

p10k configure

## 3. Move Configuration Files

Copy your configuration files to this repository under `dotfiles/mac`:

- ~/.zshrc
- ~/.p10k.zsh

## 4. Run the Setup Scripts

Make the setup script executable and run it:

chmod +x ./setup.sh
./setup.sh

## 5. Replace .p10k Configuration

Use the Catppuccin Macchiato theme for Powerlevel10k by downloading the theme configuration:

curl -o ~/.p10k.zsh https://raw.githubusercontent.com/tolkonepiu/catppuccin-powerlevel10k-themes/refs/heads/main/themes/.p10k-pure-catppuccin-macchiato.zsh

