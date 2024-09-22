# OS ALPINE
FROM alpine:3.18
# UPGRADE PACKAGES
RUN apk upgrade --no-cache
# INSTALL CURL
RUN apk add curl
# INSTALL PYTHON 3
RUN apk add python3
# INSTALL PIP
RUN apk add py3-pip
# INSTALL LIB MYSQL DEPENDENCIES
RUN apk add pkgconfig
RUN apk add --virtual build-deps gcc python3-dev musl-dev
RUN apk add --no-cache mariadb-dev
# CREATE DIRECTORY
RUN mkdir -p /opt/app/site_web
# COPY APP WEB TO CONTAINER
COPY . /opt/app/site_web

# CURRENT DIRECTORY
WORKDIR /opt/app/site_web
# INSTALL DEPENDECIES
RUN pip3 install -r requirements.txt
# SERVER CONFIG
ENV SERVER_PORT "8000"
ENV SERVER_HOST "0.0.0.0"

# RUN PYTHON APP WEB
CMD sleep 60s && python3 -u app.py