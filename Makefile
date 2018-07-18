

all: build

build:
	dep ensure
	go build ./...
	docker build .


