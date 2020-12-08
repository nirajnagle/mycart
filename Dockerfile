FROM python:3.8-alpine3.10
MAINTAINER Niraj 
ENV PYTHONUNBUFFERED 1
# Install dependencies
COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user