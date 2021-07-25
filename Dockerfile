FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -y install python3 python3-pip
RUN python3 -m pip install -r requirements.txt
COPY . /app
CMD  python3 /app/lb.py
