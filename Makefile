

all: build

build:
	rm app || true
	dep ensure
	CGO_ENABLED=0 go build -o app ./...
	docker build .
