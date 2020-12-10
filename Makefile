# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: qurobert <qurobert@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/07 15:50:54 by qurobert          #+#    #+#              #
#    Updated: 2020/12/10 14:20:11 by qurobert         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #


NAME = 		libftprintf.a
FILES =		ft_printf.c parse.c utils.c char.c string.c
INC_PATH = ./includes/
INC_FILES = ft_printf.h struct.h
SRC_PATH = ./srcs/
SRC = 		$(addprefix ${SRC_PATH},${FILES})
CC = 		gcc
OBJ = 		${SRC:.c=.o}
FLAGS = 	-Wall -Wextra -Werror
LIB =		make -C ./Libft

.PHONY: all clean fclean re libftprintf.a printf lib

all: 		$(NAME)

$(NAME): 	$(OBJ)
			@make -C Libft
			@cp ./Libft/libft.a $(NAME)
			@ar rcs $(NAME) $(OBJ)
			@printf '\033[32m %s\n\033[0m'
			@printf '\033[32m %s\n\033[0m'
			@printf '\033[32m 												 %s\n\033[0m'
			@printf '\033[32m⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿            ____________________________       %s\n\033[0m'
			@printf '\033[32m⣿⣿⣿⣿⣿⣿⣿⠛⢩⣴⣶⣶⣶⣌⠙⠫⠛⢋⣭⣤⣤⣤⣤⡙⣿⣿⣿⣿⣿⣿            !\_________________________/!\\     %s\n\033[0m'
			@printf '\033[32m⣿⣿⣿⣿⣿⡟⢡⣾⣿⠿⣛⣛⣛⣛⣛⡳⠆⢻⣿⣿⣿⠿⠿⠷⡌⠻⣿⣿⣿⣿            !!                         !! \\    %s\n\033[0m'
			@printf '\033[32m⣿⣿⣿⣿⠏⣰⣿⣿⣴⣿⣿⣿⡿⠟⠛⠛⠒⠄⢶⣶⣶⣾⡿⠶⠒⠲⠌⢻⣿⣿            !!                         !! \\   %s\n\033[0m'
			@printf '\033[32m⣿⣿⠏⣡⢨⣝⡻⠿⣿⢛⣩⡵⠞⡫⠭⠭⣭⠭⠤⠈⠭⠒⣒⠩⠭⠭⣍⠒⠈⠛            !!        		     !!  !   %s\n\033[0m'
			@printf '\033[32m⡿⢁⣾⣿⣸⣿⣿⣷⣬⡉⠁⠄⠁⠄⠄⠄⠄⠄⠄⠄⣶⠄⠄⠄⠄⠄⠄⠄⠄⢀            !!                         !!  !   %s\n\033[0m'
			@printf '\033[32m⢡⣾⣿⣿⣿⣿⣿⣿⣿⣧⡀⠄⠄⠄⠄⠄⠄⠄⢀⣠⣿⣦⣤⣀⣀⣀⣀⠄⣤⣾            !! 	                     !!  !   %s\n\033[0m'
			@printf '\033[32m⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⡶⢇⣰⣿⣿⣟⠿⠿⠿⠿⠟⠁⣾⣿⣿            !!                         !!  !   %s\n\033[0m'
			@printf '\033[32m⣿⣿⣿⣿⣿⣿⣿⡟⢛⡛⠿⠿⣿⣧⣶⣶⣿⣿⣿⣿⣿⣷⣼⣿⣿⣿⣧⠸⣿⣿            !! ${NAME} : CREATED !!  !   %s\n\033[0m'
			@printf '\033[32m⠘⢿⣿⣿⣿⣿⣿⡇⢿⡿⠿⠦⣤⣈⣙⡛⠿⠿⠿⣿⣿⣿⣿⠿⠿⠟⠛⡀⢻⣿            !!                         !!  /   %s\n\033[0m'
			@printf '\033[32m⠄⠄⠉⠻⢿⣿⣿⣷⣬⣙⠳⠶⢶⣤⣍⣙⡛⠓⠒⠶⠶⠶⠶⠖⢒⣛⣛⠁⣾⣿            !!_________________________!! /    %s\n\033[0m'
			@printf '\033[32m⠄⠄⠄⠄⠄⠈⠛⠛⠿⠿⣿⣷⣤⣤⣈⣉⣛⣛⣛⡛⠛⠛⠿⠿⠿⠟⢋⣼⣿⣿            !/_________________________\!/     %s\n\033[0m'
			@printf '\033[32m⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⠉⠉⣻⣿⣿⣿⣿⡿⠿⠛⠃⠄⠙⠛⠿⢿⣿               __\_________________/__/!_  	  %s\n\033[0m'
			@printf '\033[32m⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢬⣭⣭⡶⠖⣢⣦⣀⠄⠄⠄⠄⢀⣤⣾⣿             /oooo  oooo  oooo  oooo /!    	  %s\n\033[0m'
			@printf '\033[32m⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢰⣶⣶⣶⣾⣿⣿⣿⣿⣷⡄⠄⢠⣾⣿⣿⣿            /ooooooooooooooooooooooo/ /   	  %s\n\033[0m'
			@printf '\033[32m	                                 /ooooooooooooooooooooooo/ /		  %s\n\033[0m'
			@printf '\033[32m	                                /_______________________/_/		  %s\n\033[0m'
			@printf '\033[32m %s\n\033[0m'
			

%.o: %.c 	$(addprefix ${INC_PATH},${INC_FILES})
			@${CC} ${FLAGS} -c $< -o ${<:.c=.o} -I ${INC_PATH}
			@printf '\033[32m [✓] %s\n\033[0m'  "$(notdir $<)"
			
clean:		
			@rm -f ${OBJ}
			@make clean -C Libft
			@printf '\033[32m %s\n\033[0m'
			@printf '\033[33m⣿⣿⣿⣿⣿⡏⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿ %s\n\033[0m' 
			@printf '\033[33m⣿⣿⣿⣿⣿⣿⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠁⠀⣿ %s\n\033[0m' 
			@printf '\033[33m⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠙⠿⠿⠿⠻⠿⠿⠟⠿⠛⠉⠀⠀⠀⠀⠀⣸⣿ %s\n\033[0m' 
			@printf '\033[33m⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿ %s\n\033[0m' 
			@printf '\033[33m⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣴⣿⣿⣿⣿ %s\n\033[0m' 
			@printf '\033[33m⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⢰⣹⡆⠀⠀⠀⠀⠀⠀⣭⣷⠀⠀⠀⠸⣿⣿⣿⣿ %s\n\033[0m' 
			@printf '\033[33m⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠈⠉⠀⠀⠤⠄⠀⠀⠀⠉⠁⠀⠀⠀⠀⢿⣿⣿⣿ %s\n\033[0m' 
			@printf '\033[33m⣿⣿⣿⣿⣿⣿⣿⣿⢾⣿⣷⠀⠀⠀⠀⡠⠤⢄⠀⠀⠀⠠⣿⣿⣷⠀⢸⣿⣿⣿ %s\n\033[0m' 
			@printf '\033[33m⣿⣿⣿⣿⣿⣿⣿⣿⡀⠉⠀⠀⠀⠀⠀⢄⠀⢀⠀⠀⠀⠀⠉⠉⠁⠀ ⣿⣿⣿ %s\n\033[0m' 
			@printf '\033[33m⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿ %s\n\033[0m' 
			@printf '\033[33m⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀             ⠀⢸⣿⣿ %s\n\033[0m'
			@printf '\033[33m⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ srcs/*.o DELETED⢸⣿⣿ %s\n\033[0m'
			@printf '\033[32m %s\n\033[0m'

fclean:		clean
			@rm -f ${NAME}
			@cd ./Libft/ && rm -f libft.a
			@printf '\033[31m⣿⣿⣿⣿⣿⡏⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿ %s\n\033[0m' 
			@printf '\033[31m⣿⣿⣿⣿⣿⣿⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠁⠀⣿ %s\n\033[0m' 
			@printf '\033[31m⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠙⠿⠿⠿⠻⠿⠿⠟⠿⠛⠉⠀⠀⠀⠀⠀⣸⣿ %s\n\033[0m' 
			@printf '\033[31m⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿ %s\n\033[0m' 
			@printf '\033[31m⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣴⣿⣿⣿⣿ %s\n\033[0m' 
			@printf '\033[31m⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⢰⣹⡆⠀⠀⠀⠀⠀⠀⣭⣷⠀⠀⠀⠸⣿⣿⣿⣿ %s\n\033[0m' 
			@printf '\033[31m⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠈⠉⠀⠀⠤⠄⠀⠀⠀⠉⠁⠀⠀⠀⠀⢿⣿⣿⣿ %s\n\033[0m' 
			@printf '\033[31m⣿⣿⣿⣿⣿⣿⣿⣿⢾⣿⣷⠀⠀⠀⠀⡠⠤⢄⠀⠀⠀⠠⣿⣿⣷⠀⢸⣿⣿⣿ %s\n\033[0m' 
			@printf '\033[31m⣿⣿⣿⣿⣿⣿⣿⣿⡀⠉⠀⠀⠀⠀⠀⢄⠀⢀⠀⠀⠀⠀⠉⠉⠁⠀ ⣿⣿⣿ %s\n\033[0m' 
			@printf '\033[31m⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿ %s\n\033[0m' 
			@printf '\033[31m⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀             ⠀⢸⣿⣿ %s\n\033[0m'
			@printf '\033[31m⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ *.a DELETED   ⣿⣿⣿%s\n\033[0m'
			@printf '\033[32m %s\n\033[0m'
			
re:			fclean all
