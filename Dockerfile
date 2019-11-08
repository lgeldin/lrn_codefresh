#
# Super simple example of a Dockerfile
#
FROM ubuntu:latest
MAINTAINER Andrew Odewahn "odewahn@oreilly.com"

#RUN apt-get update
#RUN apt-get install -y python python-pip wget
#RUN pip install Flask

RUN apt-get update
RUN apt-get install -y iputils-ping 

#ADD hello.py /home/hello.py

RUN mkdir -p /test
ADD . /test
WORKDIR /test
CMD ["ping","localhost"]