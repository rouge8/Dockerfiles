FROM ubuntu:12.04
MAINTAINER Andy Freeland <andy@andyfreeland.net>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get -y update

# Basics
RUN apt-get install -y python-software-properties git

# node.js
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs g++ make

# PhantomJS
RUN apt-get install -y wget libfontconfig1-dev libssl-dev
RUN wget -q https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2
RUN tar xjf phantomjs-1.9.7-linux-x86_64.tar.bz2
RUN install -t /usr/local/bin phantomjs-1.9.7-linux-x86_64/bin/phantomjs
RUN rm -rf phantomjs-1.9.7-linux-x86_64
RUN rm phantomjs-1.9.7-linux-x86_64.tar.bz2
