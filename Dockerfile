FROM ubuntu:18.04
RUN sudo apt-get update
RUN sudo apt-get -y install python3-pip
RUN sudo pip install -r requirements.txt
COPY sudo . /app
CMD sudo python3 /app/lb.py
