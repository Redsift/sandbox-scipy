FROM quay.io/redsift/sandbox-python:v2
MAINTAINER Deepak Prabhakara email: deepak@redsift.io version: 1.1.101

COPY root /
ENV THEANO_FLAGS=blas.ldflags="-L/usr/lib/ -lblas"
RUN mkdir -p /home/sandbox/.keras
ADD root/tmp/scipy/keras.json /home/sandbox/.keras/keras.json

RUN /tmp/scipy/install

