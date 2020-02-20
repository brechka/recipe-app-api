FROM python:3.8-alpine
MAINTAINER Brechko Yuliya

ENV PYTHONBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# for sequirity, won't use a root account
RUN adduser -D user
USER user
