repo = ektar

.PHONY: help all build-ruby-dev

help:
	@echo "all - build all images"
	@echo "build-ruby-dev - build ruby environment with kindle-highlights library"
	@echo "build-ruby - build ruby environment with kindle-highlights and code"
	
all : build-ruby-dev build-ruby

build-ruby-dev : name = ruby-kindle-dev
build-ruby-dev : ver = 1.0
build-ruby-dev : docker_file = ./docker/Dockerfile-dev
build-ruby-dev : $(docker_file)
	docker build -t $(repo)/$(name):$(ver) -t $(repo)/$(name):latest -f $(docker_file) ./
	
build-ruby : name = ruby-kindle
build-ruby : ver = 1.0
build-ruby : docker_file = ./docker/Dockerfile-prod
build-ruby : $(docker_file)
	docker build -t $(repo)/$(name):$(ver) -t $(repo)/$(name):latest -f $(docker_file) ./	