FROM ubuntu:20.04
LABEL email="kalyanvin23@gmail.com"
LABEL VERSION=1.0
RUN apt update && \
    apt install -y wget jq unzip curl && \
    apt install -y net-tools iputils-ping && \
    apt install -y nginx && \
    mkdir /myscripts
RUN apt install -y cowsay
COPY script.sh /myscripts/script.sh
RUN script.sh
#CMD ["/bin/bash", "/myscripts/script.sh"]

