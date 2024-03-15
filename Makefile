# **************************************************************************** #
#                                DIRECTORIES                                   #
# **************************************************************************** #


OBJS_DIR = objs/
SRC_DIR = srcs/
SRCS_FILES = ft_printf.c ft_abs.c ft_putaddress.c ft_putchar.c ft_putnbr.c ft_putunsigned.c \
             ft_putbase_fd.c ft_puthexa.c ft_putstr.c \
	
SRC	= $(addprefix $(SRC_DIR), $(SRCS_FILES))
OBJS =	$(addprefix $(OBJS_DIR), $(SRCS_FILES:%.c=%.o))
INC	=	inc/

# **************************************************************************** #
#                                    LIBFT                                     #
# **************************************************************************** #

LIBFT_DIR = ./libft/
LIBFT = libft.a
LIBFT_AR = $(addprefix $(LIBFT_DIR), $(LIBFT))

# **************************************************************************** #
#                                  VARIABLES                                   #
# **************************************************************************** #

NAME		= libftprintf.a
AR			= ar rcs
RM			= rm -rf
GCC			= gcc
CFLAGS 		= -Wall -Wextra -Werror -I $(INC)

RESET		= \033[0m
BOLD		= \033[1m
RED			= \033[31m
GREEN		= \033[32m
YELLOW		= \033[33m
BLUE		= \033[34m

# **************************************************************************** #
#                                   TARGETS                                    #
# **************************************************************************** #

all: $(NAME)

$(OBJS_DIR)%.o: $(SRC_DIR)%.c
	@[ -d $(OBJS_DIR) ] | mkdir -p $(OBJS_DIR)
	$(GCC) $(CFLAGS) -c $< -o $@

$(LIBFT_AR):
	@make -C $(LIBFT_DIR)

$(NAME): $(OBJS) $(LIBFT_AR)
	cp $(LIBFT_AR) $(NAME)
	$(AR) $@ $^

clean:
	@make fclean -C $(LIBFT_DIR)
	$(RM) $(OBJS_DIR)

fclean: clean
	@$(RM) $(NAME)

norminette: $(LIBFT_DIR)
	norminette $(LIBFT_DIR)
	norminette .

re: fclean all

.PHONY: all clean fclean re norminette
