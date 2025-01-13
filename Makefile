# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tokazaki <tokazaki@student.42tokyo.jp>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/04 23:29:09 by tokazaki          #+#    #+#              #
#    Updated: 2024/08/16 01:07:10 by tokazaki         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DOCKER_COMPOSE = docker compose -f ./srcs/docker-compose.yml

all: run

init: cert build up

fclean: down
	rm -rf ./srcs/requirements/nginx/ssl

run: build up

re: down run

build:
	$(DOCKER_COMPOSE) build --no-cache

up:
	mkdir -p ${HOME}/data/mariadb_data
	mkdir -p ${HOME}/data/wordpress_data
	$(DOCKER_COMPOSE) up -d

fdown:
	$(DOCKER_COMPOSE) down -v

down:
	$(DOCKER_COMPOSE) down

start:
	$(DOCKER_COMPOSE) start

stop:
	$(DOCKER_COMPOSE) stop

cert:
	make -C ./srcs/requirements/nginx/tools


PHONY: run re build up down start stop fclean cert

memo:
	@echo "https://localhost/wp-admin/index.php"
