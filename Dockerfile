FROM quay.io/redsift/sandbox-python:v2
MAINTAINER Deepak Prabhakara email: deepak@redsift.io version: 1.1.101

# Libraries for Machine Learning
RUN export DEBIAN_FRONTEND=noninteractive && \
      apt-get update && \
      apt-get install -y \
      g++ \
      git \
      libopenblas-dev \
      python-dev \
      python-nose \
      python-numpy \
      python-pip \
      python-scipy \
      gfortran && \
      apt-get clean && \
      rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install --upgrade pip

# TODO: write requirements file (or pip freeze)
RUN pip install -v git+git://github.com/Theano/Theano.git
RUN pip install keras
RUN pip install pandas
RUN pip install scikit-learn
