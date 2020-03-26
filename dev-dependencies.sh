#!/bin/bash
brew update

# Node
if ! [ -x "$(command -v node)" ]; then
  echo 'Installing node' >&2
  brew install node
fi

# NVM
if ! [ -x "$(command -v nvm)" ]; then
  echo 'Installing nvm' >&2
  unset NVM_DIR
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
  
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  
  nvm install 13
fi