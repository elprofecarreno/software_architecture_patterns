# OS ALPINE
FROM alpine:3.18
# UPGRADE PACKAGES
RUN apk upgrade --no-cache
# INSTALL PYTHON 3
RUN apk add python3
# INSTALL PIP
RUN apk add py3-pip
# CREATE DIRECTORY
RUN mkdir -p /opt/app/server
# COPY APP WEB TO CONTAINER
COPY server_socket.py /opt/app/server/server_socket.py
COPY requirements.txt /opt/app/server/requirements.txt
# CHANGE CURRENT DIR
WORKDIR /opt/app/server
# INSTALL DEPENDENCIES
RUN pip install -r requirements.txt
# RUN SOCKET SERVER
CMD python3 -u server_socket.py 
