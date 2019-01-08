#!/bin/bash

# Importing Utilies
. utilities/variables.bash
. utilities/icons.bash
. utilities/colors.bash
. utilities/text-styling.bash
. utilities/file-paths.bash
. utilities/helpers.bash

# Importing Functions
. functions/initial-env-check.bash
. functions/web-servers/nginx-installation.bash
. functions/web-servers/index.bash
. functions/databases/mongodb-installation.bash
. functions/databases/index.bash
. functions/http-servers/nodejs-installation.bash
. functions/http-servers/index.bash
. functions/misc/letsencrypt-installation.bash
. functions/misc/add-user.bash
. functions/misc/index.bash
. functions/installation-steps.bash

# Clearing Screen
clear

echolog "" $INITIAL_SCREEN
echo -e "${ORANGE}███████╗███████╗██████╗ ██╗   ██╗███████╗██████╗ ███████╗██████╗ "
echo -e "${ORANGE}██╔════╝██╔════╝██╔══██╗██║   ██║██╔════╝██╔══██╗██╔════╝██╔══██╗"
echo -e "${ORANGE}███████╗█████╗  ██████╔╝██║   ██║█████╗  ██████╔╝█████╗  ██║  ██║"
echo -e "${ORANGE}╚════██║██╔══╝  ██╔══██╗╚██╗ ██╔╝██╔══╝  ██╔══██╗██╔══╝  ██║  ██║"
echo -e "${ORANGE}███████║███████╗██║  ██║ ╚████╔╝ ███████╗██║  ██║███████╗██████╔╝"
echo -e "${ORANGE}╚══════╝╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═╝╚══════╝╚═════╝ "
echolog "By ${CYAN} ${BOLD}Em Ji Madhu${NOSTYLE}" $INITIAL_SCREEN

echolog "" $INITIAL_SCREEN
echolog "" $INITIAL_SCREEN
echolog "${LIGHTCYAN} ${BOLD}Read the following and Accept if you agree.${NOSTYLE}" $INITIAL_SCREEN
echolog "" $INITIAL_SCREEN
echolog "I created this script for my own preferences. It may or may not suitable for you. And i haven't added Error Checks. So it might go wrong at anytime. And it was created to facilitate the setup of Fresh Server! I am in no way responsible, if anything happens to your Server. ${ITALICS}You are responsible for any problems.${NOSTYLE}" $INITIAL_SCREEN
echolog "" $INITIAL_SCREEN
echolog "${LIGHTCYAN}Do you agree? [Y/n] ${NOSTYLE}"
read yn

if [ "$yn" = "y" -o "$yn" = "Y" -o "$yn" = "" ]; then
	echolog "You Agreed" $INITIAL_SCREEN
	installationSteps
else
	echolog "You Disagreed." $INITIAL_SCREEN
fi

echolog "${NOSTYLE}"