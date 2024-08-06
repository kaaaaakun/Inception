# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tokazaki <tokazaki@student.42tokyo.jp>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/04 23:29:09 by tokazaki          #+#    #+#              #
#    Updated: 2024/08/04 12:01:40 by tokazaki         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

run:
	docker compose -f ./src/docker-compose.yml up --build -d

down:
	docker compose -f ./src/docker-compose.yml down

re:
	docker compose -f ./src/docker-compose.yml down
	docker compose -f ./src/docker-compose.yml up --build -d

memo:
	echo " service --status-all "
	echo " service mysql start "
	echo " service nginx start "
	echo " service php7.4-fpm start "cat: ../incep/all-in-one: Is a directory
