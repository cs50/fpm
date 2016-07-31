FROM ubuntu:14.04
WORKDIR /root

# suppress `debconf: unable to initialize frontend: Dialog` from dpkg-reconfigure
ENV DEBIAN_FRONTEND noninteractive

# suppress `unable to convert U+00E9 from UTF-8 to US-ASCII` from gem
RUN locale-gen "en_US.UTF-8" && \
    dpkg-reconfigure locales
    ENV LANG "en_US.UTF-8"
    ENV LC_ALL "en_US.UTF-8"
    ENV LC_CTYPE "en_US.UTF-8"


# TODO: decide if needed
# RUN apt-get install libxml2-dev
# install fpm
RUN apt-get update && \
    apt-get install -y build-essential rpm ruby-dev && \
    gem install fpm
