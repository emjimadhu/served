#!/bin/sh

INSTALLEDICON="✓"

# ICONS
changeWebServerIcon () {
	WEBSERVER_ICON=$INSTALLEDICON
}

changeDatabasesIcon () {
	DATABASES_ICON=$INSTALLEDICON
}

changeHttpServerIcon () {
	HTTPSERVER_ICON=$INSTALLEDICON
}

changeNginxIcon () {
	if which nginx > /dev/null 2>&1; then
    NGINX_ICON=$INSTALLEDICON
		changeWebServerIcon
	fi
}

changeMongoDbIcon () {
	if which mongod > /dev/null 2>&1; then
    MONGODB_ICON=$INSTALLEDICON
		changeDatabasesIcon
	fi
}

changeLetsEncryptIcon () {
	LETSENCRYPT_ICON=$INSTALLEDICON
}

changeNodeIcon () {
	if which node > /dev/null 2>&1; then
    NODE_ICON=$INSTALLEDICON
		changeHttpServerIcon
	elif which nodejs > /dev/null 2>&1; then
    NODE_ICON=$INSTALLEDICON
		changeHttpServerIcon
	fi
}