# OS ALPINE
FROM alpine:3.18
# UPGRADE PACKAGES
RUN apk upgrade --no-cache
# INSTALL PYTHON 3
RUN apk add python3
# INSTALL PIP
RUN apk add py3-pip
# INSTALL LIB MYSQL DEPENDENCIES
RUN apk add pkgconfig
RUN apk add --virtual build-deps gcc python3-dev musl-dev
RUN apk add --no-cache mariadb-dev
# CREATE DIRECTORY
RUN mkdir -p /opt/app/monolithic_portal
# COPY APP WEB TO CONTAINER
COPY ./monolithic_portal /opt/app/monolithic_portal

# CURRENT DIRECTORY
WORKDIR /opt/app/monolithic_portal
# INSTALL DEPENDECIES
RUN pip3 install -r requirements.txt
# SERVER CONFIG
ENV SERVER_PORT "8000"
ENV SERVER_HOST "0.0.0.0"

# RUN PYTHON APP WEB
CMD python3 -u manage.py runserver "$SERVER_HOST:$SERVER_PORT"