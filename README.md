# SERVERED

This is bash script to Automate "Intital Server Setup" in Ubuntu 16.* and 18.*.

![MAin](images/1.png?raw=true "Main")

## Features

* Web Servers
    * NGINX
* Databases
    * MongoDB
* HTTP Servers
    * Nodejs
* Misc
    * Let's Crypt SSL


## Prerequisites

NOTE: Make sure you run this with a user with *sudo* access. And some of the commands in the bash requires sudo access. If you don't want to enter password everytime it asks sudo permission. Add your user to *sudoer* using this [guide](https://www.tecmint.com/run-sudo-command-without-password-linux/).

1) CURL

```bash
sudo apt-get install curl
```

2) GIT
```bash
sudo apt-get install git
```


## Installation

Clone the Repo to your /home directory.

```bash
# Clone in HTTPS
git clone https://github.com/emjimadhu/servered.git

# Clone in SSH
git clone git@github.com:emjimadhu/servered.git
```
## Usage

```bash
cd servered/

bash init.bash
```

Follow along the OnScreen Steps.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)

## Screenshots

![MAin Installation](images/2.png?raw=true "Main Installation")

![Web Server Installation](images/3.png?raw=true "Web Server Installation")

![Database Installation](images/4.png?raw=true "Database Installation")

![HTTP Server Installation](images/5.png?raw=true "HTTP Server Installation")

![Misc Installation](images/6.png?raw=true "Misc Installation")

## Resources

1) [ColorLib](https://colorlib.com/) - The comming soon template was taken from here.