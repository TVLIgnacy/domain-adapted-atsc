FROM nvidia/cuda:10.2-base

LABEL maintainer="ignacy.debicki@factset.com"

RUN mkdir -p /usr/src/domain-adapted-atsc

WORKDIR /usr/src/domain-adapted-atsc

COPY . .

RUN apt-get update && apt-get -y install python3-pip vim && pip install --upgrade pip

RUN pip3 install -r requirements.txt

RUN pip3 install torch pytorch-transformers tensorboardX scipy sklearn

