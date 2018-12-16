# SERVERED

This is bash script to Automate "Intital Server Setup" in Ubuntu 16.* and 18.*.

## Features

* Web Servers
    * NGINX


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

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)

## Resources

1) [ColorLib](https://colorlib.com/) - The comming soon template was taken from here.