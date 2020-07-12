FROM centos:7.6.1810

RUN \
  yum install -y \
    centos-release-scl-rh \
    devtoolset-9\* \
    && \
  echo "installed compilers"

RUN \
  yum install -y \
    linux-tools-generic \
    linux-tools \
    linux-tools-3.10.0 \
    gdb \
    perf \
    gawk \
    && \
  echo "installed profiling and debugging tools"

RUN \
  yum install -y \
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
