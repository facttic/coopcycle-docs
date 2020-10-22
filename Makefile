#!/usr/bin/make

SHELL := /bin/sh

JEKYLL_VERSION := 3.8

UID := $(shell id -u)
GID := $(shell id -g)

DOCKER_RUN := docker run --rm
DOCKER_VOLUMES := --volume="${PWD}:/srv/jekyll" --volume="${PWD}/vendor/bundle:/usr/local/bundle"
DOCKER_ENV := --env JEKYLL_UID=${UID} --env JEKYLL_GID=${GID}
DOCKER_PORT := -p 4000:4000
DOCKER_IT := -it jekyll/jekyll:${JEKYLL_VERSION}

build:
	$(DOCKER_RUN) $(DOCKER_VOLUMES) $(DOCKER_ENV) $(DOCKER_IT) jekyll build

update:
	$(DOCKER_RUN) $(DOCKER_VOLUMES) $(DOCKER_ENV) $(DOCKER_IT) jekyll update

serve:
	$(DOCKER_RUN) $(DOCKER_VOLUMES) $(DOCKER_ENV) $(DOCKER_PORT) $(DOCKER_IT) jekyll serve
