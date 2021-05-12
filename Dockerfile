FROM python:3.9-slim

RUN pip install pip --upgrade --no-cache-dir && \
    pip install ansible --no-cache-dir && \
    apt-get update -y && \
    apt-get install ssh-client -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    groupadd jenkins && \
    useradd -m -g jenkins jenkins && \
    mkdir /work && \
    chown -R jenkins:jenkins /work 

WORKDIR /work
