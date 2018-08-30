# Grab Ubuntu
FROM ubuntu:latest

# Install utilities
RUN apt-get update --fix-missing && apt-get -y upgrade && \
    apt-get install -y sudo curl wget unzip git python python3.6 python3.6-dev python3-pip build-essential

# Install pyyaml and pystache
RUN python3.6 -m pip install pyyaml pystache

# Install node 6
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && \
    sudo apt-get install -y nodejs npm

# Install Chrome for Ubuntu
RUN sudo apt-get install -y chromium-browser gconf2

export CHROME_BIN=/usr/bin/chromium-browser
