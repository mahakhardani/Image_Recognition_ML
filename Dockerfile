FROM tensorflow/tensorflow:1.15.0
LABEL version="0.2"

RUN mkdir imageRecognition
WORKDIR imageRecognition

COPY model .
COPY run.sh .

#download classify image model
RUN python classify_image.py

#install gsutil
RUN  apt-get  -y install gcc python-dev python-setuptools libffi-dev python-pip
RUN  pip install gsutil
