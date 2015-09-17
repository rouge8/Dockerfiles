rouge8/pythons
===============

Dockerfile for an Ubuntu 14.04 LTS container with Python 2.6, [2.7.9+][], 3.3, 3.4, 3.5, and PyPy.

Includes the latest (at build time) pip/virtualenv for /usr/bin/python.

<https://index.docker.io/u/rouge8/pythons/>

## Usage

    sudo docker pull rouge8/pythons
    sudo docker run -i -t rouge8/pythons /bin/bash  # many Python will be available in $PATH


[2.7.9+]: https://launchpad.net/~fkrull/+archive/ubuntu/deadsnakes-python2.7
