IMAGE_NAME=ipman1971/scala-zulu
CONTAINER_NAME=scala-zulu-env

default: build

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -it -v $(workspace):/workspace --name $(CONTAINER_NAME) $(IMAGE_NAME) /bin/bash

clean:
	docker rm -vf $(CONTAINER_NAME)

clean-image:
	docker rmi -f $(IMAGE_NAME)
