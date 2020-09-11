FROM docker:latest

MAINTAINER Nemanja Spasic


RUN apk update && apk add curl git

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.1/bin/linux/amd64/kubectl
RUN chmod u+x kubectl && mv kubectl /bin/kubectl

WORKDIR /config

CMD bash
