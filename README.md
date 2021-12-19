# php8-nginx-pg-bootstrap_for_symfony

## Specific branch for zenstruck/foundry

This branch has a specific makefile for foundry project:
https://github.com/zenstruck/foundry  
It allows you to contribute on the project under containers.

## Requirements

* make  
* docker-compose

## Installation

First, copy the `.env.dist` file to `.env` and change variables inside (`APP_SECRET` and `GITHUB_TOKEN`)  

use the command `make install` to install foundry project, and launch containers.  
After this command, the `.git/` from foundry will replace the actual `.git/`  
Be sure to not have unsaved work under this directory !


## Features

Once install you can launch tests suite (to be sure your installation is good) by doing `make tests`
or without Makefile you can simply do `docker-compose exec php-fpm vendor/bin/simple-phpunit`
