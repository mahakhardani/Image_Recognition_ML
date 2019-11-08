FROM tensorflow/tensorflow:1.15.0

RUN mkdir imageRecognition
WORKDIR imageRecognition

COPY picture .
COPY model .

#download classify image model
RUN python classify_image.py
