FROM tensorflow/tensorflow:latest-cpu-py3
LABEL maintainer="Rosco Pecoltran"

# Install prerequisites
RUN apt update && apt install -y \
    wget \
    nano \
    cmake \
    libboost-all-dev \
    libboost-python-dev \
    libboost-thread-dev

# Additional Python Packages
RUN pip3 install --upgrade pip
RUN pip3 install \
    matplotlib \
    scipy \
    scikit-image \
    numba \
    Pillow \
    tqdm

COPY requirements.txt /opt/requirements.txt

WORKDIR /opt
RUN pip3 install -r /opt/requirements.tx

# ENTRYPOINT []
# CMD []
