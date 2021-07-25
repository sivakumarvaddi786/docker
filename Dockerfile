FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -y install python3 python3-pip
RUN pip3 install haproxy-stats
COPY . /app
WORKDIR /app
CMD chmod +x *
CMD  python3 lb.py

