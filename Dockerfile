FROM tensorflow/tensorflow:1.15.0
LABEL version="0.1"

RUN mkdir imageRecognition
WORKDIR imageRecognition

COPY picture .
COPY model .

#download classify image model
RUN python classify_image.py
