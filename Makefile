

all: build

build:
	dep ensure
	CGO_ENABLED=0 go build -o app ./...
	docker build .
