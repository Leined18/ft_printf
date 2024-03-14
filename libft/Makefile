# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: danpalac <danpalac@student.42madrid>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/15 16:56:35 by danpalac          #+#    #+#              #
#    Updated: 2024/03/11 15:15:51 by danpalac         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# **************************************************************************** #
#                                  VARIABLES                                   #
# **************************************************************************** #

NAME		= libft.a
CC		= gcc
CFLAGS		= -Wall -Wextra -Werror -g
RM		= rm -rf
AR		= ar rcs
LIB		= ranlib

# COLORS

RESET		= \033[0m
BOLD		= \033[1m
RED			= \033[31m
GREEN		= \033[32m
YELLOW		= \033[33m
BLUE		= \033[34m


# **************************************************************************** #
#                            ARCHIVOS FUENTE                                   #
# **************************************************************************** #

SRCS_FILES	=	ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_bzero.c ft_calloc.c \
			ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c \
			ft_putnbr_fd.c ft_putstr_fd.c ft_atoi.c ft_itoa.c ft_split.c ft_strchr.c ft_strdup.c \
			ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c \
			ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c ft_putchar.c ft_putstr.c\
			ft_putnbr.c ft_abs.c ft_putaddress.c ft_putunsigned.c ft_puthexa.c ft_putbase_fd.c \

BONUS_FILES	= ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c \
		  ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

# **************************************************************************** #
#                            DIRECTORIOS                                       #
# **************************************************************************** #


OBJS_DIR	= objs/
SRCS_DIR	= srcs/
SRCS		=	$(addprefix $(SRCS_DIR), $(SRCS_FILES))
OBJS		=	$(addprefix $(OBJS_DIR), $(OBJS_FILES))
BONUS		=	$(addprefix $(OBJS_DIR), $(OBJS_BONUS_FILES))

# **************************************************************************** #
#                                   TARGETS                                    #
# **************************************************************************** #

OBJS_FILES			=	$(SRCS_FILES:%.c=%.o)
OBJS_BONUS_FILES	=	$(BONUS_FILES:.c=.o)
NBONUS				= .bonus

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)
	echo "$(GREEN)\nlibft.a compiled!$(DEF_COLOR)"

$(OBJS_DIR)%.o: $(SRCS_DIR)%.c
	[ -d $(OBJS_DIR) ] | mkdir -p $(OBJS_DIR)
	$(CC) $(CFLAGS) -c $< -o $@
	printf "\33[2K\r$(GRAY)$(CC) $(CFLAGS) -c $< -o $@$(DEF_COLOR)"

$(NBONUS): $(BONUS) $(NAME)
	$(AR) $(NAME) $(OBJS_BONUS)
	touch .bonus

bonus : $(NBONUS)

clean:
	$(RM) $(OBJS) $(OBJS_BONUS) $(NBONUS) a.out

fclean: clean
	$(RM) $(NAME) $(OBJS_DIR)

re: fclean all

.PHONY: all clean fclean re
