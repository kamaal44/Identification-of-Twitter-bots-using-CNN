FROM tensorflow/tensorflow:latest-cpu-py3
LABEL maintainer="Rosco Pecoltran"

COPY requirements.txt /opt/requirements.txt

WORKDIR /opt
RUN pip install -r /opt/requirements.tx

# ENTRYPOINT []
# CMD []
