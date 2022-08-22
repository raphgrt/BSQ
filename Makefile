# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rgeorget <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/22 02:23:33 by rgeorget          #+#    #+#              #
#    Updated: 2022/08/22 02:30:37 by rgeorget         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

DIR		= ./lib/
DIR2	= ./srcs/

SRCS	= ${wildcard lib/*.c}
SRCS2	= ${wildcard srcs/*.c}
HRCS	= ./lib/*.h
HRCS2	= ./srcs/*.h

NAME	= bsq

OBJS	= ${SRCS:.c=.o}
OBJS2	= ${SRCS2:.c=o}

CC		= gcc
FLAGS	= -Wall -Wextra -Werror
RM		= rm -rf

.c.o:	 	${HSRC}
			${CC} ${FLAGS} -I ${HRCS} -c $< -o ${<:.c=.o}
			${HSRC2}
			${CC} ${FLAGS} -I ${HRCS2} -c $< -o ${<:.c=.o}

${NAME}: 	${OBJS}
			${CC} ${FLAGS} ${OBJS} main.c -o $@
			${OBJS2}
			${CC} ${FLAGS} ${OBJS2} main.c -o $@

all:		${NAME}

clean:
			${RM} ${DIR}*.o *.o ${DIR}*.gch
			${RM} ${DIR2}*.o *.o ${DIR2}*.gch

fclean:		clean
			${RM} ${NAME}

re:			fclean all