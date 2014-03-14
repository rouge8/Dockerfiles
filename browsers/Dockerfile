FROM ubuntu:12.04
MAINTAINER Andy Freeland <andy@andyfreeland.net>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN echo "deb http://security.ubuntu.com/ubuntu precise-security main universe" >> /etc/apt/sources.list
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise-updates main universe" >> /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y xvfb unzip wget

# Firefox
RUN apt-get install -y firefox

# Chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list
RUN apt-get update
RUN apt-get -y install google-chrome-stable
RUN wget http://chromedriver.storage.googleapis.com/2.9/chromedriver_linux64.zip --quiet
RUN unzip chromedriver_linux64.zip
RUN install -t /usr/local/bin chromedriver
RUN rm chromedriver_linux64.zip

# PhantomJS
RUN apt-get install -y build-essential chrpath git-core libssl-dev libfontconfig1-dev
RUN wget -q https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2
RUN tar xjf phantomjs-1.9.7-linux-x86_64.tar.bz2
RUN install -t /usr/local/bin phantomjs-1.9.7-linux-x86_64/bin/phantomjs
RUN rm -rf phantomjs-1.9.7-linux-x86_64
RUN rm phantomjs-1.9.7-linux-x86_64.tar.bz2

# Try to shrink
RUN apt-get clean
RUN apt-get autoremove -y

ENTRYPOINT ["/usr/bin/xvfb-run"]
