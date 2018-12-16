#
# Utility Functions
#

#
# Converting Charecter with Another
# First Argument: String to be Replaced
# Second Argument: From which Character
# Third Argument: To which Character
# Example: replaceCharacters example.com . -
#
replaceCharacters () {
  str=${1//$2/$3}
  echo "$str"
}

#
# Creating Emplty files for logging in Nginx Server Blocks
#
create-nginx-logs () {
  for i in 1 2 3 4
  do
    if [ $i == 1 ]; then
      sudo touch /var/log/nginx/$1-access.log
      echo ""
      echo "Created Normal Access Log"
    elif [ $i == 2 ]; then
      sudo touch /var/log/nginx/$1-error.log
      echo ""
      echo "Created Normal Error Log"
    elif [ $i == 3 ]; then
      sudo touch /var/log/nginx/$1-ssl-access.log
      echo ""
      echo "Created SSL Access Log"
    else
      sudo touch /var/log/nginx/$1-ssl-error.log
      echo ""
      echo "Created SSL Error Log"
    fi
  done
}

#
# Generating Let's Encrypt SSL
#
create-ssl () {
  cd
  echo ""
  echo "Moved to Home Directory"
  ./certbot-auto certonly --standalone -d $1
  echo ""
  echo "Certificate Created"
  echo ""
  echo "Creating Directories to hold the Certificates"
  mkdir -p .keys/ssl/$1
  echo ""
  echo "Copying Certificates to User Home"
  sudo cp /etc/letsencrypt/live/$1/* ~/.keys/ssl/$1
  echo ""
  echo "Certificte is created in .keys/ssl/$1"
  echo ""
  echo "Creating NGINX logs for Encrypted and Non-Encrypted"
  echo ""
  replacedString=`replaceCharacters $1 . -`
  create-nginx-logs $replacedString
  echo "Logs Created."
  echo ""
}