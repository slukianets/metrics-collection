FROM ubuntu:latest

RUN apt-get update && apt-get install -y		\
					coreutils	\
					python3		\
					python3-pip
RUN apt-get clean

RUN pip3 install psutil

ADD metrics /usr/bin/metrics

