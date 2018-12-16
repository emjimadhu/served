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