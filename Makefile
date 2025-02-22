IMAGE_NAME = pyright-checker

.PHONY: typing
typing:
	docker build -t $(IMAGE_NAME) .
	docker run --rm $(IMAGE_NAME)