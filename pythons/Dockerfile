FROM ubuntu:trusty
MAINTAINER Andy Freeland <andy@andyfreeland.net>

# Install PyPy based on the official Docker image for PyPy:
# https://github.com/docker-library/pypy
RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    curl ca-certificates --no-install-recommends
ENV PYPY_VERSION 2.6.1
RUN set -x \
  && curl -f -SL "https://bitbucket.org/pypy/pypy/downloads/pypy-${PYPY_VERSION}-linux64.tar.bz2" \
  | tar -xjC /usr/local --strip-components=1

# Python 2.6 and 3.x
ADD fkrull-deadsnakes-trusty.list /etc/apt/sources.list.d/
# Python 2.7.9+, including the SSL backports
ADD fkrull-deadsnakes-python2.7-trusty.list /etc/apt/sources.list.d/
RUN apt-key adv \
      --keyserver keyserver.ubuntu.com \
      --recv FF3997E83CD969B409FB24BC5BB92C09DB82666C
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    ssh \
    python2.6 python2.6-dev \
    python2.7 python2.7-dev \
    python3.3 python3.3-dev \
    python3.4 python3.4-dev \
    python3.5 python3.5-dev \
    libffi-dev \
    python python-dev \
    git \
    curl ca-certificates \
    build-essential \
    --no-install-recommends
RUN curl https://bootstrap.pypa.io/get-pip.py | python -
RUN pip install virtualenv wheel

# World-writeable cache directory
RUN mkdir -p /.cache
RUN chmod a+rwx /.cache

# Sane locale setting
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
