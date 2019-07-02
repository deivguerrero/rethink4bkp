FROM ubuntu:xenial

LABEL maintainer.name="David Guerrero" \
    maintainer.email="deivguerrero@gmail.com"

RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
RUN echo "deb http://download.rethinkdb.com/apt xenial main" > /etc/apt/sources.list.d/rethinkdb.list

RUN apt-get -y update && \
    apt-get -y install build-essential  python libcurl4-openssl-dev python-pip

RUN apt-get -y install rethinkdb && \
    pip install --no-cache-dir rethinkdb