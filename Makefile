logs:
	docker logs fb
build:
	docker-compose build
up:
	docker-compose up -d
	docker logs fb
down:
	docker-compose down