#!/bin/sh

INSTALLEDICON="✓"

# ICONS
changeWEBSERVER_ICON () {
	WEBSERVER_ICON=$INSTALLEDICON
}
changeNGINX_ICON () {
	if ! which nginx > /dev/null 2>&1; then
    NGINX_ICON=$INSTALLEDICON
	fi
}
changeNODE_ICON () {
	NODE_ICON=$INSTALLEDICON
}