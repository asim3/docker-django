SHELL=/bin/bash


DOCKER_USER?=asim3
DOCKER_IMAGE?=django
DOCKER_TAG?=v1


main: build shell


build:
	@ cd ${DOCKER_TAG} && docker image build -t ${DOCKER_USER}/${DOCKER_IMAGE}:${DOCKER_TAG} .


shell:
	@ docker container run -it --entrypoint=/bin/sh ${DOCKER_USER}/${DOCKER_IMAGE}:${DOCKER_TAG}


push: build
	@ docker push ${DOCKER_USER}/${DOCKER_IMAGE}:${DOCKER_TAG}


build-all:
	for appname in ${LIST}; do make build DOCKER_TAG=$${appname}; done;
	for appname in ${LIST}; do make push DOCKER_TAG=$${appname}; done;
