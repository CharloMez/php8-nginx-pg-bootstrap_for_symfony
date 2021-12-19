install:
	@echo "Pulling zenstruck/foundry repository"
	git clone git@github.com:zenstruck/foundry.git
	cp -rp foundry/. .
	rm -rf foundry
	@echo "launch container"
	docker-compose up -d
	@echo "Installing project"
	docker-compose exec php-fpm composer install
	@echo "Project ready"

.PHONY: tests
tests:
	docker-compose exec php-fpm vendor/bin/simple-phpunit