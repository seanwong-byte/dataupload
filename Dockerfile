FROM python:3.10
MAINTAINER itdream "756808193@qq.com"
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code

RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get clean
RUN apt-get update
RUN apt-get install python3-dev default-libmysqlclient-dev build-essential -y
ADD requirements.txt /code/
RUN pip3 install --index-url https://mirrors.aliyun.com/pypi/simple/ --no-cache-dir -r requirements.txt
ADD . /code/