install:
	@echo "launch container"
	docker-compose up
	@echo "Pulling zenstruck/foundry repository"
	git clone git@github.com:zenstruck/foundry.git
	mv -R foundry/* .
	rmdir foundry
	@echo "Installing project"
	docker-compose exec php-fpm composer install
	@echo "Project ready"

tests:
	docker-compose exec php-fpm vendor/bin/simple-phpunit