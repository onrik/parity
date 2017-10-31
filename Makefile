IMAGE = parity-build
CURRENT_DIR = $(shell pwd)

DOCKER_CMD = docker run --rm -i -v "$(CURRENT_DIR):/mnt" -w /mnt $(IMAGE)

image:
	docker build -t $(IMAGE) .

build: image
	$(DOCKER_CMD) bash -e ./build.sh $(VERSION)
