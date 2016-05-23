FROM quay.io/redsift/sandbox-python:v2
MAINTAINER Deepak Prabhakara email: deepak@redsift.io version: 1.1.101

COPY root /

RUN /tmp/scipy/install
