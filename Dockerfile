FROM bradrydzewski/ubuntu
MAINTAINER Andy Freeland <andy@andyfreeland.net>

ADD rootfs/etc /etc/
ADD rootfs/usr/bin /usr/bin/

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

ADD scripts /var/cache/scripts

# Install Xvfb and web browsers
RUN cd /var/cache/scripts && ./all.sh && rm -rf /var/cache/scripts

# Start with Xvfb running on :99
ENV DISPLAY :99
ENTRYPOINT ["/usr/bin/with-xvfb"]
