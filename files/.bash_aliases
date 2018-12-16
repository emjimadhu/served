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
      echo "We are at $i"
      sudo touch /var/log/nginx/$1-access.log
      echo "Created Normal Access Log"
    elif [ $i == 2 ]; then
      echo "We are at $i"
      sudo touch /var/log/nginx/$1-error.log
      echo "Created Normal Error Log"
    elif [ $i == 3 ]; then
      echo "We are at $i"
      sudo touch /var/log/nginx/$1-ssl-access.log
      echo "Created SSL Access Log"
    else
      echo "We are at $i"
      sudo touch /var/log/nginx/$1-ssl-error.log
      echo "Created SSL Error Log"
    fi
  done
}

#
# Generating Let's Encrypt SSL
#
create-ssl () {
  cd
  echo "Moved to Home Directory"
  ./certbot-auto certonly --standalone -d $1
  echo "Certificate Created"
  echo "Creating Directories to hold the Certificates"
  mkdir -p .keys/ssl/$1
  echo "Copying Certificates to User Home"
  sudo cp /etc/letsencrypt/live/$1/* ~/.keys/ssl/$1
  echo "Certificte is created in .keys/ssl/$1"
  echo "Creating NGINX logs for Encrypted and Non-Encrypted"
  replacedString=`replaceCharacters $1 . -`
  create-nginx-logs $replacedString
  echo "Logs Created."
}