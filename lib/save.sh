#!/bin/bash

# macrice — glryan@uw.edu	|	https://griffinryan.com/

# dotfile backup script
NC='\33[0m';              # No Color
RED='\33[0;31m';          # Red
LIGHTRED='\33[1;31m';      # Light Red
GREEN='\33[0;32';          # Green
LIGHTGREEN='\33[1;32m';     # Light Green
BLUE='\33[0;34m';          # Blue
LIGHTBLUE='\33[1;34m';     # Light Blue
CYAN='\33[0;36m';          # Cyan
LIGHTCYAN='\33[1;36m';     # Light Cyan
YELLOW='\33[0;33m';        # Yellow
LIGHTYELLOW='\33[1;33m';   # Light Yellow
PURPLE='\33[0;35m';        # Purple
LIGHTPURPLE='\33[1;35m';   # Light Purple

function dotfileSave() {
    # make a new /.macrice/ folder.
    cd $HOME
    mkdir .macrice 2>/dev/null
    mkdir .macrice/.vim 2>/dev/null
    mkdir .macrice/.local 2>/dev/null
    mkdir .macrice/.config 2>/dev/null
    mkdir .macrice/.iterm 2>/dev/null
    mkdir .macrice/.fonts 2>/dev/null

    # individually (and recursively) add parent directories.
    /bin/cp -r ~/.vim ~/.macrice/.vim 2>/dev/null
    /bin/cp -r ~/.local ~/.macrice/.local 2>/dev/null
    /bin/cp -r ~/.config ~/.macrice/.config 2>/dev/null
    /bin/cp -r ~/.iterm ~/.macrice/.iterm 2>/dev/null
    /bin/cp -r ~/.fonts ~/.macrice/.fonts 2>/dev/null

    # wildcard * to add all parent files.
    /bin/cp ~/.* ~/.macrice/ 2>/dev/null
}

# Help page for macrice - a macOS configuration tool.
    toilet -d /opt/homebrew/Cellar/macrice/**/fonts -f larry3d 'Macrice' | boxes -d parchment | lolcat -p 5
# Install dotfiles to ~/.* from /usr/local/share/torpdots/dotfiles/.*
if [ "$1" == "--force" -o "$1" == "-f" ]; then
    # force dotfileInstall() with -f argument
    dotfileSave
    # Status message.
    printf "    '\33[1;35mmacrice\33[0m \33[1;33msave\33[0m' \33[1;32msuccessfully backed up\33[0m dotfiles to \33[1;34m/~/.macrice/\33[0m.\n"
else
    # Status message.
    printf "    This will \33[1;34mbackup existing\33[0m files in the home directory. \33[1;31mAre you sure\33[0m? (y/n) " 
    read
    echo;
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        dotfileSave
        # Status message.
        printf "    '\33[1;35mmacrice\33[0m \33[1;33msave\33[0m' \33[1;32msuccessfully backed up\33[0m dotfiles to \33[1;34m/~/.macrice/\33[0m.\n"
    fi;
fi;
unset dotfileSave
