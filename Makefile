# **************************************************************************** #
#                                DIRECTORIES                                   #
# **************************************************************************** #

SRCP = ./
SRCS_PRINTF = ft_printf.c
SRCS = $(addprefix $(SRCP),$(SRCS_PRINTF))

OBJS = $(SRCS:.c=.o)

HEAD = ./

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
EXE			= exe
AR			= ar rcs
RM			= rm -f
GCC			= gcc
CFLAGS 		= -Wall -Wextra -Werror

RESET		= \033[0m
BOLD		= \033[1m
RED			= \033[31m
GREEN		= \033[32m
YELLOW		= \033[33m
BLUE		= \033[34m

# **************************************************************************** #
#                                   TARGETS                                    #
# **************************************************************************** #

all: $(NAME) $(LIBFT_AR)

$(OBJS): %.o: %.c
	$(GCC) $(CFLAGS) -c -I $(HEAD) $< -o $@

$(LIBFT_AR):
	@make -C $(LIBFT_DIR)

$(NAME): $(OBJS) $(LIBFT_AR)
	cp $(LIBFT_AR) $(NAME)
	@if $(AR) $@ $^; then \
		echo "$(GREEN)$(BOLD)SUCCESS$(RESET)"; \
		echo "$(BLUE)Created: $(words $(OBJS) $(LIBFT_AR)) File/s [.o/.a] $(RESET)"; \
		echo "$(BLUE)Created: $(NAME)"; \
		echo "$(BLUE)Created: $(OBJS)$(RESET)"; \
	fi

clean:
	@make fclean -C $(LIBFT_DIR)
	@$(RM) $(OBJS) a.out
	@echo "$(GREEN)$(BOLD)SUCCESS$(RESET)"
	@echo "$(YELLOW)Removed: $(words $(OBJS) $(NAME)) File/s [.o/.a] $(RESET)"
	@echo "$(YELLOW)Removed: $(RED)$(OBJS)"

fclean: clean
	@$(RM) $(NAME) $(EXE)
	@echo "$(YELLOW)Removed: $(RED)$(NAME) $(EXE)$(RESET)"

norminette: $(LIBFT_DIR)
	norminette $(LIBFT_DIR)
	norminette .

$(EXE): $(NAME)
	$(GCC) $(CFLAGS) $(SRCS_PRINTF) $(NAME) -o $(EXE) && ./$(EXE)

re: fclean all

.PHONY: all clean fclean re norminette exe
