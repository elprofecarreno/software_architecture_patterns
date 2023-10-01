FROM alpine:3.18
RUN apk upgrade --no-cache
RUN apk add python3
RUN apk add py3-pip
RUN apk add pkgconfig
RUN apk add --virtual build-deps gcc python3-dev musl-dev
RUN apk add --no-cache mariadb-dev
RUN mkdir -p /opt/app
COPY ./app/ /opt/app
WORKDIR /opt/app/
RUN pip3 install -r requirements.txt
CMD python3 main.py