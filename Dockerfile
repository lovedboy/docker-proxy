FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip 
RUN apt-get install -y python-dev
#RUN apt-get install -y python-pip 
RUN apt-get install -y python-crypto
RUN pip install gevent
COPY server_proxy.py /opt/server_proxy.py
WORKDIR /opt
EXPOSE 8888
CMD ["python","server_proxy.py"]


