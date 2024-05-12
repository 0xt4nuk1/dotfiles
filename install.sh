#!/bin/bash

# Check if python3 command exists
if command -v python3 &>/dev/null; then
    echo "Python 3 is installed."
    python3 --version
else
    echo "Error: Python 3 is not installed. Python 3 must be installed to run this script." >&2
    exit 1
fi

curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

echo '# - - - - - - - - - - DFOX - - - - - - - - - -' >> $HOME/.zshrc
echo 'export DFOX_PATH="$HOME/.dotfiles"'             >> $HOME/.zshrc
echo 'source $DFOX_PATH/init.sh'                      >> $HOME/.zshrc
echo '# - - - - - - - - - - - - - - - - - - - - - -'  >> $HOME/.zshrc