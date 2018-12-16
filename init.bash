#!/bin/bash

# Importing Utilies
. utilities/variables.bash
. utilities/icons.bash
. utilities/colors.bash
. utilities/text-styling.bash
. utilities/file-paths.bash

# Importing Functions
. functions/installation-steps.bash
. functions/web-servers/nginx-installation.bash
. functions/web-servers/index.bash

# Clearing Screen
clear

echo ""
echo -e "${ORANGE}███████╗███████╗██████╗ ██╗   ██╗███████╗██████╗ ███████╗██████╗ "
echo -e "${ORANGE}██╔════╝██╔════╝██╔══██╗██║   ██║██╔════╝██╔══██╗██╔════╝██╔══██╗"
echo -e "${ORANGE}███████╗█████╗  ██████╔╝██║   ██║█████╗  ██████╔╝█████╗  ██║  ██║"
echo -e "${ORANGE}╚════██║██╔══╝  ██╔══██╗╚██╗ ██╔╝██╔══╝  ██╔══██╗██╔══╝  ██║  ██║"
echo -e "${ORANGE}███████║███████╗██║  ██║ ╚████╔╝ ███████╗██║  ██║███████╗██████╔╝"
echo -e "${ORANGE}╚══════╝╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═╝╚══════╝╚═════╝ "
echo -e "By ${CYAN} ${BOLD}Em Ji Madhu${NOSTYLE}"

echo ""
echo ""
echo -e "${LIGHTCYAN} ${BOLD}Read the following and Accept is you agree.${NOSTYLE}"
echo ""
echo -e "I created this script for my own preferences. It may or may not suitable for you. And i haven't added Error Checks. So it might go wrong at anytime. And it was created to facilitate the setup of Fresh Server! I am in no way responsible, if anything happens to your Server. ${ITALICS}You are responsible for any problems.${NOSTYLE}"
echo ""
read -p "Do you agree? [Y/n] " yn

if [ "$yn" = "y" -o "$yn" = "Y" -o "$yn" = "" ]; then
	echo -e "You Agreed"
	installationSteps
else
	echo -e "You Disagreed."
fi

echo -e "${NOSTYLE}"