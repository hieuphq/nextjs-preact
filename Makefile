IMAGE_NAME=hieuphq/nextjs-preact
.PHONY: prod dev

prod:
	docker build -f Dockerfile -t ${IMAGE_NAME}:prod .
	docker push ${IMAGE_NAME}:prod

dev:
	yarn start