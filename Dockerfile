FROM mcr.microsoft.com/devcontainers/python:1-3.11-bookworm

ENV PYTHONUNBUFFERED 1
ENV PATH="/root/.local/bin:${PATH}"

COPY packages.txt /tmp/packages.txt
COPY requirements.txt /tmp/requirements.txt

RUN apt-get update && apt-get upgrade -y && xargs apt-get install -y < /tmp/packages.txt
RUN pip3 install --user -r /tmp/requirements.txt