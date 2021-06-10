#!/bin/bash

echo '\nSetting up Mac OS with Developer preferences...\n'

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install cask

if [ -d "/Applications/iTerm.app" ]; then
    echo "iTerm installed, skipping"
else 
    sh ./iterm2.sh
fi

sh ./zsh.sh
sh ./dev-dependencies.sh

(sh ./oh-my-zsh.sh || echo 'Failed but still going :D')
sh ./zsh-plugins.sh


echo '\nDone! Close and open iTerm2\n'

