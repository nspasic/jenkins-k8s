FROM docker:latest

MAINTAINER Nemanja Spasic



RUN apk add --update --no-cache build-base python3-dev python3 libffi-dev libressl-dev bash git gettext curl \
 && curl -O https://bootstrap.pypa.io/get-pip.py \
 && python3 get-pip.py \
 && pip install --upgrade six awscli awsebcli



RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl 
RUN chmod u+x kubectl && mv kubectl /bin/kubectl

WORKDIR /config

CMD bash
