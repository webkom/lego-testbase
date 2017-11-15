.PHONY:	build push

IMAGE = lego-testbase
TAG = latest

build:
	docker build --pull -t abakus/$(IMAGE):$(TAG) .

push:
	docker push abakus/$(IMAGE):$(TAG)
