FROM centos:centos7

RUN yum install -y epel-release

RUN yum install -y \
    make \
    gcc \
    gcc-c++ \
    rust \
    cargo \
    openssl-devel \
    libudev-devel
