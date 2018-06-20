# This file creates a "studentenportal/base" image with all studentenportal
#  dependencies.
FROM python:2.7

RUN apt-get update && apt-get -y install \
    build-essential gcc g++ \
    python-dev python-setuptools python-pip python-virtualenv \
    git mercurial subversion \
    postgresql-client libpq-dev \
    libjpeg-progs graphicsmagick \
    ruby ruby-dev \
    curl dnsutils

RUN groupadd -g 1000 studentenportal
RUN useradd --home /home/studentenportal -u 1000 -g 1000 -M studentenportal

RUN mkdir -p /srv/www/studentenportal/media && chown -R studentenportal:studentenportal /srv/www/

RUN mkdir /tmp/requirements/

VOLUME ["/srv/www/studentenportal/media"]

WORKDIR /srv/www/studentenportal

ONBUILD ADD requirements/base.txt /tmp/requirements/base.txt
ONBUILD RUN pip install -r /tmp/requirements/base.txt
