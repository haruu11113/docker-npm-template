up:
	docker-compose up -d
build:
	docker-compose build --no-cache --force-rm
init:
	# """
	# only for first time
	# """
	cp --no-clobber .env.example .env
	cp --no-clobber ./nuxt/.env.example ./nuxt/.env
	@make build
	@make up
rebuild:
	@make destroy
	@make init
stop:
	docker-compose stop
down:
	docker-compose down --remove-orphans
restart:
	@make down
	@make up
destroy:
	docker-compose down --rmi all --volumes --remove-orphans
destroy-volumes:
	docker-compose down --volumes --remove-orphans
ps:
	docker-compose ps
logs:
	docker-compose logs
logs-watch:
	docker-compose logs --follow
.PHONY: nuxt
nuxt:
	# """
	# login to nuxt project container
	# """
	docker-compose exec nuxt bash
.PHONY: nuxt-new
npm-install:
	docker-compose exec nuxt bash -c 'npm install'
npm-dev:
	docker-compose exec nuxt bash -c 'npm run dev'
npm-build:
	docker-compose exec nuxt bash -c 'npm run build'
npm-start:
	docker-compose exec nuxt bash -c 'npm run start'
npm-generate:
	docker-compose exec nuxt bash -c 'npm run generate'
npm-watch:
	docker-compose exec web npm run watch
npm-watch-poll:
	docker-compose exec web npm run watch-poll
npm-hot:
	docker-compose exec web npm run hot
redis:
	docker-compose exec redis redis-cli
