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
RUN mkdir -p WORKDIR /app/soap/config
RUN mkdir -p WORKDIR /app/soap/model
RUN mkdir -p WORKDIR /app/soap/services
# COPY APP SOAP TO CONTAINER
COPY . /app/soap

# CURRENT DIRECTORY
WORKDIR /app/soap
# INSTALL DEPENDECIES
RUN pip install --no-cache-dir -r requirements.txt
# RUN PYTHON APP SOAP
CMD python3 -u app.py