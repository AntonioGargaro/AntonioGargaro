#!/bin/bash
sudo chown -R $USER /usr/local/lib/node_modules

# Theme
npm install --global pure-prompt

# Plugins
## Syntax Highlighing
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
## Autocomplete
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
