# Makefile for managing the Docker image of FreeCAD

# Docker image name
IMAGE_NAME := starling-cloud/freecad

# Docker tag
TAG := $(shell git rev-parse --short HEAD)

# Default target
all: build

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME):$(TAG) .
	docker tag $(IMAGE_NAME):$(TAG) $(IMAGE_NAME):latest

# Push the Docker image to a registry
push:
	docker push $(IMAGE_NAME):$(TAG)
	docker push $(IMAGE_NAME):latest

# Run the Docker container
run:
	docker run -it --rm $(IMAGE_NAME):latest

# Remove the Docker image
clean:
	docker rmi $(IMAGE_NAME):$(TAG)
	docker rmi $(IMAGE_NAME):latest

# Help target to display all available commands
help:
	@echo "Available commands:"
	@echo "  make build - Builds the Docker image."
	@echo "  make push  - Pushes the Docker image to Docker Hub."
	@echo "  make run   - Runs a container from the image."
	@echo "  make clean - Removes the images from local storage."
	@echo "  make help  - Displays this help."

.PHONY: all build push run clean help