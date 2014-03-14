rouge8/precise-openjdk-7-jdk
============================

Ubuntu 12.04 Docker image with OpenJDK-7-JDK installed.

This fakes a Fuse install as a workaround for [dotcloud/docker#514](https://github.com/dotcloud/docker/issues/514).

<https://index.docker.io/u/rouge8/precise-openjdk-7-jdk/>

## Usage

```
sudo docker pull rouge8/precise-openjdk-7-jdk
sudo docker run rouge8/precise-openjdk-7-jdk javac -version  # javac 1.7.0_51
```
