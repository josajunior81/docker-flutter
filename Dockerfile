FROM  debian:stable-slim

RUN apt-get update && apt-get -y install git curl bash unzip zip xz-utils

RUN git clone https://github.com/flutter/flutter.git

ENV PATH /flutter/bin:$PATH

RUN flutter doctor
