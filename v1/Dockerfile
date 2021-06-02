FROM python:3-alpine

ENV PYTHONUNBUFFERED 1

ADD install-and-run-django.sh /

RUN apk add --no-cache \
    gcc \
    postgresql-dev \
    musl-dev \
    libffi-dev \
    jpeg-dev \
    gettext \
    zlib-dev \
    linux-headers \
    ca-certificates


RUN adduser -D django_user

USER django_user

CMD ["/bin/sh","-c","/install-and-run-django.sh"]

