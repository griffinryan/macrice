#!/bin/bash

NC='\033[0m';               # No Color
RED='\033[0;31m';           # Red
LIGHTRED='\033[1;31m';      # Light Red
GREEN='\033[0;32';          # Green
LIGHTGREEN='\033[1;32';     # Light Green
BLUE='\033[0;34m';          # Blue
LIGHTBLUE='\033[1;34m';     # Light Blue
CYAN='\033[0;36m';          # Cyan
LIGHTCYAN='\033[1;36m';     # Light Cyan
YELLOW='\033[0;33m';        # Yellow
LIGHTYELLOW='\033[1;33m';   # Light Yellow
PURPLE='\033[0;35m';        # Purple
LIGHTPURPLE='\033[1;35m';   # Light Purple

# help page for macrice - a macOS configuration tool.
toilet -d /opt/homebrew/Cellar/macrice/**/bin/fonts -f larry3d 'Macrice' | boxes -d parchment | lolcat -p 5

echo -e "    Welcome to ${LIGHTPURPLE}macrice${NC} -";
echo -e "       '${LIGHTBLUE}macrice${NC} ${LIGHTYELLOW}help${NC}' to display this page.";
echo -e "       '${LIGHTBLUE}macrice${NC} ${LIGHTYELLOW}apple${NC}' to configure macOS with Applescript ${RED}(use with caution!)${NC}";
echo -e "       '${LIGHTBLUE}macrice${NC} ${LIGHTYELLOW}dot${NC}' to install all dotfiles ${RED}(use with caution!)${NC}";
echo -e "       '${LIGHTBLUE}macrice${NC} ${LIGHTYELLOW}formula${NC}' to install popular homebrew formulae";
echo -e "       '${LIGHTBLUE}macrice${NC} ${LIGHTYELLOW}cask${NC}' to install popular homebrew casks";