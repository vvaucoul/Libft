# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vvaucoul <vvaucoul@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/04 15:43:31 by vvaucoul          #+#    #+#              #
#    Updated: 2019/11/08 21:19:46 by vvaucoul         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCSB = 		ft_lstnew_bonus.c						\
				ft_lstadd_front_bonus.c					\
				ft_lstsize_bonus.c						\
				ft_lstlast_bonus.c						\
				ft_lstadd_back_bonus.c					\
				ft_lstdelone_bonus.c					\
				ft_lstclear_bonus.c						\
				ft_lstiter_bonus.c						\
				ft_lstmap_bonus.c

SRCS =			ft_atoi.c 								\
				ft_bzero.c 								\
				ft_calloc.c 							\
				ft_isalnum.c 							\
				ft_isalpha.c 							\
				ft_isascii.c 							\
				ft_isdigit.c 							\
				ft_isprint.c 							\
				ft_memccpy.c 							\
				ft_memchr.c 							\
				ft_memcmp.c 							\
				ft_memcpy.c 							\
				ft_memmove.c 							\
				ft_memset.c 							\
				ft_strchr.c 							\
				ft_strdup.c 							\
				ft_strlcat.c 							\
				ft_strlcpy.c 							\
				ft_strlen.c 							\
				ft_strncmp.c 							\
				ft_strnstr.c 							\
				ft_strrchr.c 							\
				ft_tolower.c 							\
				ft_toupper.c							\
				ft_substr.c								\
				ft_strjoin.c							\
				ft_strtrim.c							\
				ft_split.c								\
				ft_itoa.c								\
				ft_putchar_fd.c							\
				ft_putstr_fd.c							\
				ft_putendl_fd.c							\
				ft_putnbr_fd.c							\
				ft_strmapi.c

CC = gcc

AR = ar -rc

FLAGS = -Wall -Wextra -Werror

OBJ =         $(SRCS:.c=.o)

OBJB =         $(SRCSB:.c=.o)

%.o : %.c
	$(CC) $(FLAGS) -I./includes -c $< -o ${<:.c=.o}

all:         $(NAME)

$(NAME):     $(OBJ)
	$(AR) $(NAME) $(OBJ)

bonus : $(OBJ) $(OBJB)
	@$(AR) $(NAME) $(OBJ) $(OBJB)

clean:
	rm -f $(OBJ) $(OBJB)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY:     all clean re fclean
