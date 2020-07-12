FROM ubuntu:latest

RUN \
  apt-get update -y \
    && \
  apt-get install -y software-properties-common \
    && \
  add-apt-repository -y ppa:ubuntu-toolchain-r/test \
    && \
  apt-get update -y \
    && \
  apt-get -y upgrade \
    && \
  echo "configured packaging system"

RUN \
  apt-get install -y \
    linux-tools-generic \
    && \
  echo "installed tools and such"

RUN \
  apt-get install -y \
    curl \
    git \
    htop \
    man \
    unzip \
    vim \
    nano \
    wget \
    && \
  echo "installed creature comforts"