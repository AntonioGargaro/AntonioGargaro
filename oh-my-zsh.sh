#!/bin/bash
set +e

# oh-my-zsh
(sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || echo 'y' > zsh)