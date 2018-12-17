#!/bin/bash

#
# File Paths
#
# Change here if you want to change the File Paths of something
#

#	Local user's www directory
# This directory is used for symlinking /var/www
# It should not be any root directory and it will always points to user's home.
LOCAL_WWW_DIR="static-files"

#
# Default www directory
#
DEFAULT_WWW_DIR="/var/www"

#
# Log File Location for this Project
#
MAIN_INSTALLTION_NAME="installation"
LOG_FILE_NAME=$MAIN_INSTALLTION_NAME # For Main Installation.
LOG_FILE_PATH="logs"
NGINX_INSTALLATION_LOG="nginx"
MONGODB_INSTALLATION_LOG="mongodb"
LETSENCRYPT_INSTALLATION_LOG="letsencrypt"