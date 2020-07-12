FROM centos:7.6.1810

RUN yum install -y centos-release-scl-rh

RUN \
  yum install -y \
    devtoolset-9 \
    devtoolset-9-make \
    devtoolset-9-gcc \
    devtoolset-9-gdb \
    devtoolset-9-gcc-c++ \
    llvm-toolset-7 \
    llvm-toolset-7-clang \
    && \
  echo "installed compilers"

RUN \
  yum install -y \
    linux-tools-generic \
    linux-tools \
    linux-tools-3.10.0 \
    perf \
    gawk \
    && \
  echo "installed profiling and debugging tools"

RUN \
  yum install -y \
    make \
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
