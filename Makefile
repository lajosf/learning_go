.DEFAULT_GOAL := build

fmt:
	go fmt ./src/...

.PHONY: fmt

lint: fmt
	golint ./src/...

.PHONY: lint

vet: fmt
	go vet ./src/...
	shadow ./...

.PHONY: vet

build: vet
	go build ./src/ch1/hello.go

.PHONY: build
