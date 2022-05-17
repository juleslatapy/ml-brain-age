FROM python:3.9
#tiangolo/uvicorn-gunicorn-fastapi:python3.8-slim
WORKDIR /tmp
COPY requirements.txt /tmp
#ENV PYTHONPATH="/usr/src/app:${PYTHONPATH}"
RUN apt-get update -y && apt-get install make && apt-get install curl -y && apt-get install git -y
RUN pip install --no-cache-dir -U pip wheel setuptools
RUN pip install -r requirements.txt
COPY /src /src
WORKDIR /src
CMD /bin/bash
