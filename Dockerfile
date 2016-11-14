
# webber - image to test webapps

FROM ubuntu:16:10
MAINTAINER  mattions "mattions@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y\
    python3 \
    python3-dev \
    python3-virtualenv \
    phantomjs \
    git \
    xvfb \
    firefox \
    nodejs \
    npm
   
# Latest pip from pipy.
RUN npm install -g bower

# need to link this.
RUN ln /usr/bin/nodejs  /usr/bin/node     

# Update to latest pip.
RUN pip install -U pip

# Get the geckdriver
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.11.1/geckodriver-v0.11.1-linux64.tar.gz && \
    tar xf geckodriver-v0.11.1-linux64.tar.gz && \
    cp geckodriver /usr/local/bin/
