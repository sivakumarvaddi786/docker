FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -y install python3 python3-pip
RUN pip3 install haproxy-stats
COPY . /app
WORKDIR /app
RUN chmod +x *
CMD ls -l
CMD  python3 lb.py
#RUN echo 'user-account ALL=NOPASSWD: /usr/bin/apt-get , /usr/bin/apt' >> /etc/sudoers.d/50-user-account
