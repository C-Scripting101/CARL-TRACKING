# Dockerfile

# Script       : Carl-Tracker
# Author       : Carl Centino
# Github       : https://github.com/C-Scripting101
# Messenger    : https://m.me/C-Scripting101
# Email        : anonymousunknown123321@gmail.com
# Date         : 08-13-2022
# Main Language: Shell

# Download and import main images

# Operating system
FROM debian:latest

# Author info
LABEL MAINTAINER="https://github.com/C-Scripting101/carl-tracker"

# Working directory
WORKDIR /IP-Tracker/
# Add files 
ADD . /IP-Tracker

# Installing other packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl unzip wget -y
RUN apt-get install --no-install-recommends php -y
RUN apt-get clean

# Main command
CMD ["./ip.sh", "--no-update"]

## Wanna run it own? Try following commnads:

## "sudo docker build . -t c-scripting101/carl-tracker:latest", "sudo docker run --rm -it c-scripting101/carl-tracker:latest"

## "sudo docker pull c-scripting101/carl-tracker", "sudo docker run --rm -it c-scripting101/carl-tracker"