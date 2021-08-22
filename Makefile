#******************************************************************************#
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: dvan-kri <dvan-kri@student.42.fr>            +#+                      #
#                                                    +#+                       #
#    Created: 2021/08/15 14:04:55 by dvan-kri      #+#    #+#                  #
#    Updated: 2021/08/22 12:37:49 by dvan-kri      ########   odam.nl          #
#                                                                              #
#******************************************************************************#

NAME_PS = push_swap

NAME_C = checker

SRC_PS = push_swap.c

SRC_C = checker.c

OBJS_PS = $(SRCS:.c=.o)

LIBFT = libft/libft.a

all: $(NAME_PS)

$(NAME_PS):
	gcc -o $(NAME_PS) $(LIBFT) $(OBJS_PS)

$(NAME_C):
	gcc -o $(NAME_C) $(SRC_C)

clean:
	/bin/rm -f *.o

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
