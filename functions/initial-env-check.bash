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
# Creating Log File Location
#
mkdir $LOG_FILE_PATH
touch $LOG_FILE_PATH/$LOG_FILE_NAME.log
touch $LOG_FILE_PATH/$NGINX_INSTALLATION_LOG.log
touch $LOG_FILE_PATH/$MONGODB_INSTALLATION_LOG.log
touch $LOG_FILE_PATH/$LETSENCRYPT_INSTALLATION_LOG.log

#
# Creating Directories for Let's Encrypt SSLs
#
mkdir -p ~/.keys/ssl