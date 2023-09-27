FROM alpine:3.18
RUN apk upgrade --no-cache
RUN apk add python3
RUN apk add py3-pip
RUN apk add pkgconfig
RUN apk add --virtual build-deps gcc python3-dev musl-dev
RUN apk add --no-cache mariadb-dev
COPY ./app/ /opt/
COPY ./requirements.txt /opt/requirements.txt
RUN pip3 install -r /opt/requirements.txt
CMD python3 /opt/main.py