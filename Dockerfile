FROM mcr.microsoft.com/devcontainers/python:1-3.11-bookworm
#Allow the code to run in real time
ENV PYTHONUNBUFFERED 1
#Allow packages from anywhere in the container
ENV PATH="/root/.local/bin:${PATH}"
#Copies necessary packages and libraries to the chosen device
COPY packages.txt /tmp/packages.txt
COPY requirements.txt /tmp/requirements.txt
#Updates and installs necessary packages
RUN apt-get update && apt-get upgrade -y && xargs apt-get install -y < /tmp/packages.txt
RUN pip3 install --user -r /tmp/requirements.txt