
.PHONY: build
build:
	docker build -t knaou/my-theia .

.PHONY: test
test:
	docker-compose -f docker-compose.test.yml run sut
	docker-compose -f docker-compose.test.yml down

.PHONY: push
push:
	docker push knaou/my-theia

.PHONY: all
all: test build push


