#!/bin/sh

. utilities/colors.sh
. utilities/text-styling.sh
. functions/installation-steps.sh

# Clearing Screen
clear

echo ""
echo "${ORANGE}███████╗███████╗██████╗ ██╗   ██╗███████╗██████╗ ███████╗██████╗ "
echo "${ORANGE}██╔════╝██╔════╝██╔══██╗██║   ██║██╔════╝██╔══██╗██╔════╝██╔══██╗"
echo "${ORANGE}███████╗█████╗  ██████╔╝██║   ██║█████╗  ██████╔╝█████╗  ██║  ██║"
echo "${ORANGE}╚════██║██╔══╝  ██╔══██╗╚██╗ ██╔╝██╔══╝  ██╔══██╗██╔══╝  ██║  ██║"
echo "${ORANGE}███████║███████╗██║  ██║ ╚████╔╝ ███████╗██║  ██║███████╗██████╔╝"
echo "${ORANGE}╚══════╝╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═╝╚══════╝╚═════╝ "
echo "By ${CYAN} ${BOLD}Em Ji Madhu${NOSTYLE}"

echo ""
echo ""
echo "${LIGHTCYAN} ${BOLD}Read the following and Accept is you agree.${NOSTYLE}"
echo ""
echo "I created this script for my own preferences. It may or may not suitable for you. And i haven't added Error Checks. So it might go wrong at anytime. And it was created to facilitate the setup of Fresh Server! I am in no way responsible, if anything happens to your Server. ${ITALICS}You are responsible for any problems.${NOSTYLE}"
echo ""
read -p "Do you agree? [Y/n] " yn

if [ "$yn" = "y" -o "$yn" = "Y" -o "$yn" = "" ]; then
	echo "You Agreed"
	installationSteps
else
	echo "You Disagreed."
fi

echo "${NOSTYLE}"