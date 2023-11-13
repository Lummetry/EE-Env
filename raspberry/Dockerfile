FROM arm64v8/ubuntu:22.04 

ENV DEBIAN_FRONTEND noninteractive
ENV AIXP_DOCKER Yes
ENV AIXP_ENV v0.8-2.1

RUN apt update --quiet && apt upgrade -y && apt install -y build-essential software-properties-common curl git unzip \
 ffmpeg liblzma-dev

RUN apt-add-repository -y ppa:deadsnakes/ppa && apt update --quiet && apt install -y python3.11 python3.11-dev && \
 curl https://bootstrap.pypa.io/get-pip.py | python3.11

WORKDIR /aixp-build
COPY ./requirements.txt .

RUN pip3.11 install -r requirements.txt
