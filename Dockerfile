FROM python:3.9-slim

RUN pip install pip --upgrade --no-cache-dir && \
    pip install ansible --no-cache-dir && \
    apt-get update -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /work
