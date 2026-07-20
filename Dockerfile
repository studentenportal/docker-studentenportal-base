# This file creates a "studentenportal/base" image with all studentenportal
# dependencies.
FROM python:3.10

# TODO: check what isn't needed anymore and remove
RUN apt-get update && apt-get -y install \
    build-essential gcc g++ \
    python3-dev python3-setuptools python3-pip python3-virtualenv \
    postgresql-client libpq-dev \
    libjpeg-progs graphicsmagick \
    ruby ruby-dev \
    curl dnsutils \
    && rm -rf /var/lib/apt/lists/*
