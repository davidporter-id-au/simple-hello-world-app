

all: build

build:
	curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
	rm app || true
	dep ensure
	CGO_ENABLED=0 go build -o app ./...
	docker build .
