
# webber - image to test webapps

FROM ubuntu

MAINTAINER  mattions "mattions@gmail.com"

RUN apt-get update && apt-get install -y\
    python \
    python-dev \
    python-virtualenv \
    phantomjs \
    git \
    postgresql-common \
    postgresql-server-dev-9.3 \
    postgresql-client-9.3 \
    nodejs
   
# Latest pip from pipy.
RUN npm install -g bower    
RUN pip install -U pip
