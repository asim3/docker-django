FROM python:3-alpine

ADD install-and-run-django.sh /

RUN adduser -D django_user

USER django_user

CMD ["/bin/sh","-c","install-and-run-django.sh"]
