FROM mcr.microsoft.com/devcontainers/python:1-3.11-bullseye

ENV PYTHONUNBUFFERED 1
ENV PATH="/root/.local/bin:${PATH}"

RUN if [ -f packages.txt ]; then apt-get update && apt-get upgrade -y && xargs apt-get install -y < packages.txt; fi

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --user -r /tmp/requirements.txt