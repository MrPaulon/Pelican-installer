#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}###############################################${NC}"
echo -e "${YELLOW}#                 Welcome on:                 #${NC}"
echo -e "${YELLOW}#             ${GREEN}PELICAN INSTALLER${YELLOW}               #${NC}"
echo -e "${YELLOW}###############################################${NC}\n"

echo -e "${NC}Please select the option you want to install:"
echo -e "[1] Install panel"
echo -e "[2] Install wings"
echo -e "[3] Install panel & wings"

read -p ": " choix
echo -e "${NC}You selected: $choix"

if [ "$choix" == "1" ]; then
    echo -e "${GREEN}Installing panel...${NC}"
    ./panel.sh
elif [ "$choix" == "2" ]; then
    echo -e "${GREEN}Installing wings...${NC}"
elif [ "$choix" == "3" ]; then
    echo -e "${GREEN}Installing panel & wings...${NC}"
    ./panel.sh
else
    echo -e "${RED}Invalid option. Please select 1, 2, or 3.${NC}"
fi