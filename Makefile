repo = ektar

.PHONY: help all build-ruby

help:
	@echo "all - build all images"
	@echo "build-ruby - build basic ruby environment"
	
all : build-ruby

build-ruby : name = ruby
build-ruby : ver = 1.01
build-ruby : docker_file = ./docker/Dockerfile
build-ruby : $(docker_file)
	docker build -t $(repo)/$(name):$(ver) -t $(repo)/$(name):latest -f $(docker_file) ./