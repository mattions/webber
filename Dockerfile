
# webber - image to test webapps

FROM ubuntu
MAINTAINER  mattions "mattions@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y\
    python \
    python-dev \
    python-virtualenv \
    phantomjs \
    git \
    postgresql-common \
    postgresql-server-dev-9.3 \
    postgresql-client-9.3 \
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
