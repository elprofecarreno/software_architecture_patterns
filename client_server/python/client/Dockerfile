# OS ALPINE
FROM alpine:3.18
# UPGRADE PACKAGES
RUN apk upgrade --no-cache
# INSTALL PYTHON 3
RUN apk add python3
# INSTALL PIP
RUN apk add py3-pip
# CREATE DIRECTORY
RUN mkdir -p /opt/app/client
# COPY APP WEB TO CONTAINER
COPY client_socket.py /opt/app/client/client_socket.py
COPY requirements.txt /opt/app/client/requirements.txt
# CHANGE CURRENT DIR
WORKDIR /opt/app/client
# INSTALL DEPENDENCIES
RUN pip install -r requirements.txt
# RUN SOCKET SERVER
CMD sleep 20s && python3 -u client_socket.py