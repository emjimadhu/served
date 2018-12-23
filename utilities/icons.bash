#!/bin/sh

INSTALLEDICON="✓"

# ICONS
changeWebServerIcon () {
	WEBSERVER_ICON=$INSTALLEDICON
}

changeDatabasesIcon () {
	DATABASES_ICON=$INSTALLEDICON
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