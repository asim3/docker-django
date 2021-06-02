FROM python:3-alpine

ENV PYTHONUNBUFFERED 1

ADD install-and-run-django.sh /

RUN apk add --no-cache --virtual .build-deps \
    ca-certificates \
    gcc \
    postgresql-dev \
    linux-headers \
    musl-dev \
    libffi-dev \
    jpeg-dev \
    zlib-dev \
    cairo

RUN apk del .build-deps

RUN adduser -D django_user

USER django_user

CMD ["/bin/sh","-c","/install-and-run-django.sh"]

