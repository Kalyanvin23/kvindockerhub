FROM ubuntu:20.04
LABEL email="kalyanvin23@gmail.com"
LABEL VERSION=1.0
RUN apt update && \
    apt install -y wget jq unzip curl && \
    apt install -y net-tools iputils-ping
RUN apt install -y cowsay


