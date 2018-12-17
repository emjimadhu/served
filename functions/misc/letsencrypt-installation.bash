#!/bin/bash

letsencryptInstallation () {
	echolog ""
	echolog "" $LETSENCRYPT_INSTALLATION_LOG
	echolog "${YELLOW}┏ ---------------------" $LETSENCRYPT_INSTALLATION_LOG
	echolog "" $LETSENCRYPT_INSTALLATION_LOG
	echolog "  Installing ${BOLD}Let's Encrypt${NOSTYLE}" $LETSENCRYPT_INSTALLATION_LOG
	echolog "" $LETSENCRYPT_INSTALLATION_LOG
	echolog "  Downloading Certbot for Generating SSL. It will be stored as ${BOLD}~/certbot-auto${NOSTYLE}" $LETSENCRYPT_INSTALLATION_LOG
	echolog "" $LETSENCRYPT_INSTALLATION_LOG
	wget https://dl.eff.org/certbot-auto -P ~/
	echolog "" $LETSENCRYPT_INSTALLATION_LOG
	echolog "  Changing Permission for cerbot-auto to Executable." $LETSENCRYPT_INSTALLATION_LOG
	chmod a+x ~/certbot-auto
	echolog "" $LETSENCRYPT_INSTALLATION_LOG
	echolog "  Copying Bash Aliases for some custome Commands to execute." $LETSENCRYPT_INSTALLATION_LOG
	cp files/.bash_aliases ~/
	source ~/.bash_aliases
	echolog " Everything is Done Successfully" $LETSENCRYPT_INSTALLATION_LOG
	echolog "" $LETSENCRYPT_INSTALLATION_LOG
	echolog "  Now From your terminal whenever you want to create a ssl type like this command ${ITALICS}create-ssl example.com${NOSTYLE}. The First Argument should be your Domain Name." $LETSENCRYPT_INSTALLATION_LOG
	echolog "" $LETSENCRYPT_INSTALLATION_LOG
	echolog "  All the necessary files for you and put it in ${BOLD}~/.keys/ssl/<your-domain-name>${NOSTYLE}. Now all you have to do is, configures your NGINX server block to point to this ssl certificate created in ${BOLD}~/.keys/ssl/<your-domain-name>" $LETSENCRYPT_INSTALLATION_LOG
	echolog "" $LETSENCRYPT_INSTALLATION_LOG
	echolog "" $LETSENCRYPT_INSTALLATION_LOG
	echolog "${YELLOW}┗ ---------------------${NOSTYLE}" 
	changeMongoDbIcon
}