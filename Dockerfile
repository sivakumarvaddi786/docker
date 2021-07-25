FROM ubuntu:18.04
COPY . /app
RUN make /app
CMD python3 /app/app.py
