FROM python:3-alpine

ENV VIRTUAL_ENV=/opt/venv

RUN python3 -m venv $VIRTUAL_ENV

ENV PATH="$VIRTUAL_ENV/bin:$PATH"

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
    ca-certificates \
    cairo

RUN mkdir /opt/code

WORKDIR /opt/code

RUN adduser -D django_user

USER django_user

CMD ["/bin/sh","-c","/install-and-run-django.sh"]
