FROM arm64v8/ubuntu:22.04 

ENV AIXP_DOCKER Yes
ENV AIXP_ENV v0.8-2.1

RUN apt update --quiet && apt upgrade -y && apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev \
 libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev ffmpeg libgl1-mesa-glx liblzma-dev

WORKDIR /python-build
RUN wget https://www.python.org/ftp/python/3.11.2/Python-3.11.2.tgz && tar -xvf Python-3.11.2.tgz && \
  cd Python-3.11.2 && ./configure --enable-optimizations && make && make altinstall

WORKDIR /aixp-build
COPY ./requirements.txt .

RUN pip3.11 install -r requirements.txt
