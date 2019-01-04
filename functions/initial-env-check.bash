#!/bin/bash

#
# Determining Ubuntu Version
#
UBUNTU_VERSION="$(lsb_release -r -s ; echo)"
if [ "$UBUNTU_VERSION" = "18.04" -o "$UBUNTU_VERSION" = "18.10" ]; then
    UBUNTU_GREATER=true
fi

#
# Determining Node Installation
#
changeNginxIcon

#
# Determining MongoDB Installation
#
changeMongoDbIcon

#
# Determining NodeJS Installation
#
changeNodeIcon

#
# Creating Log File Location
#
if [ ! -d "$LOG_FILE_PATH" ]; then
  mkdir $LOG_FILE_PATH
fi
touch $LOG_FILE_PATH/$MAIN_INSTALLTION_NAME.log
touch $LOG_FILE_PATH/$WEBSERVER_INSTALLATION.log
touch $LOG_FILE_PATH/$NGINX_INSTALLATION_LOG.log
touch $LOG_FILE_PATH/$DATABASE_INSTALLATION.log
touch $LOG_FILE_PATH/$MONGODB_INSTALLATION_LOG.log
touch $LOG_FILE_PATH/$MISC_INSTALLATION.log
touch $LOG_FILE_PATH/$LETSENCRYPT_INSTALLATION_LOG.log

#
# Creating Directories for Let's Encrypt SSLs
#
mkdir -p ~/.keys/ssl