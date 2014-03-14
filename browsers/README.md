rouge8/browsers
===============

Scripts and Dockerfile used to generate a container with Xvfb and common web browsers installed.

<https://index.docker.io/u/rouge8/browsers/>

## Usage

    sudo docker pull rouge8/browsers
    sudo docker run -i -t rouge8/browsers /bin/bash  # Xvfb will be running on DISPLAY :99
