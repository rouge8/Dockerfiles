docker-browsers
===============

Scripts and Dockerfile used to generate a container with Xvfb and common web browsers installed.

Based heavily on [drone/images](https://github.com/drone/images).

## Usage

```
sudo docker pull rouge8/browsers
sudo docker run -i -t rouge8/browsers /bin/bash  # Xvfb will be running on DISPLAY :99
```
