.PHONY:	build push

IMAGE = abakus
TAG = latest

build:
	docker build -t abakus/$(IMAGE):$(TAG) .

push:
	docker push abakus/$(IMAGE):$(TAG)
