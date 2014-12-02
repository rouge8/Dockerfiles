FROM ubuntu:trusty
MAINTAINER Andy Freeland <andy@andyfreeland.net>

ADD fkrull-deadsnakes-trusty.list /etc/apt/sources.list.d/
RUN apt-key adv \
      --keyserver keyserver.ubuntu.com \
      --recv FF3997E83CD969B409FB24BC5BB92C09DB82666C
ADD pypy-trusty.list /etc/apt/sources.list.d/
RUN apt-key adv \
      --keyserver keyserver.ubuntu.com \
      --recv 2862D0785AFACD8C65B23DB0251104D968854915
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    ssh \
    python2.6 python2.6-dev \
    python2.7 python2.7-dev \
    python3.1 python3.1-dev \
    python3.2 python3.2-dev \
    python3.3 python3.3-dev \
    python3.4 python3.4-dev \
    pypy pypy-dev libffi-dev \
    python \
    git \
    curl ca-certificates \
    gcc \
    --no-install-recommends
RUN curl https://bootstrap.pypa.io/get-pip.py | python -
RUN pip install tox virtualenv wheel

# Sane locale setting
RUN locale-gen en_US.UTF-8
env LANG en_US.UTF-8
env LC_ALL en_US.UTF-8
