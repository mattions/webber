
# webber - image to test webapps

FROM ubuntu

MAINTAINER  mattions "mattions@gmail.com"

RUN apt-get update && apt-get install -y\
    python \
    python-virtualenv \
    phantomjs \
    git \
    postgresql-common \
    postgresql-server-dev-9.3
