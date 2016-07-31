default: build run

build:
	docker build -t cs50/fpm .

rebuild:
	docker build --no-cache -t cs50/fpm .

run:
	docker run -i --rm -v "$(PWD)"/:/root -t cs50/fpm
